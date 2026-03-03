/*
The Chinook database contains details of an online music store.
Here are some example answers to the question
*/

-- List all customers
SELECT
    *
FROM
    Customer c 
    WHERE c.Company IS NULL

-- List all customers. Show only the CustomerId, FirstName and LastName columns
SELECT 

c.Customerid,
c.FirstName,
c.LastName,
c.Country,
c.email 

FROM
Customer c

GROUP BY c.Country 

--WHERE c.Country = 'United Kingdom'
WHERE c.FirstName like 'A%'
--and c.Email like '%@apple%'  
--and c.FirstName like 'L%' and c.LastName like 'K%'
--and c.Company IS NOT NULL
ORDER BY c.Country DESC


SELECT 
c.country
,count(*) as num_customers
from customer c
Group By c.Country 
order by num_customers desc

-- List customers in the United Kingdom  

-- List customers whose first names begins with an A.
-- Hint: use LIKE and the % wildcard

-- List Customers with an apple email address

-- Which customers have the initials LK?


-- Which are the corporate customers i.e. those with a value, not NULL, in the Company column?

-- How many customers are in each country.  Order by the most popular country first.

SELECT * 

From invoice i
ORDER BY BirthDate


SELECT 
i.InvoiceId
, i.InvoiceDate
,i.Total
,c.LastName
,c.FirstName
,c.FirstName +' '+ c.LastName AS Fullname 
,c.SupportRepId
,e.FirstName +' '+e.LastName AS [Employee full name]
 FROM Invoice i
 LEFT JOIN  Customer C ON I.CustomerId = c.CustomerId
 LEFT JOIN Employee e ON c.SupportRepId = C.CustomerId
--WHERE i.total > 45.00

 ORDER BY I.InvoiceDate DESC

-- When was the oldest employee born?  Who is that?

-- List the 10 latest invoices. Include the InvoiceId, InvoiceDate and Total
-- Then  also include the customer full name (first and last name together)

-- List the customers who have spent more than £45

-- List the City, CustomerId and LastName of all customers in Paris and London, 
-- and the Total of their invoices
	
-- Show all details about customer Michelle Brooks.  List salient details of her invoices.

/*
Which employees were born in the 1960s?  Show only the EmployeeId, FirstName, LastName and BirthDate columns
Note: Define a date value as with the region independent format 'yyyy-mm-dd' e.g. '1969-12-31'
*/


-- List countries, and the number of customers and the total invoiced amount
-- Order  high to low in terms of the number of customers

-- What are the top 10 most popular artists in terms of number of tracks bought by customers?

-- List the albums in alphabetical order of Title

-- List 10 albums and their artist.  Order by album title.

