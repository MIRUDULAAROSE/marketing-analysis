SELECT * FROM [dbo].[customers]
SELECT * FROM [dbo].[geography]

-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information


SELECT 
    c.CustomerID,  -- Selects the unique identifier for each customer
    c.CustomerName,  -- Selects the name of each customer
    c.Email,  -- Selects the email of each customer
    c.Gender,  -- Selects the gender of each customer
    c.Age,-- Selects the age of each customer
    g.Country,  -- Selects the country from the geography table to enrich customer data
    g.City,  -- Selects the city from the geography table to enrich customer data
     CASE 
         WHEN c.AGE < 20 THEN 'Teenager'
         WHEN c.AGE BETWEEN 20 AND 40 THEN 'Adult'
         WHEN c.AGE BETWEEN 40 AND 60 THEN 'Middle-Aged'
         ELSE 'Senior'
         END AS AgeCategory
FROM 
    [dbo].[customers] as c  
LEFT JOIN
-- RIGHT JOIN
 -- INNER JOIN
-- FULL OUTER JOIN
    [dbo].[geography] as g  
ON 
    c.GeographyID = g.GeographyID; 
