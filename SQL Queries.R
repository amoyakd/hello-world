# Interesting SQL queries

# Find the maximum value in a variable
select max(column) from table

# Find the Top n values of a variable
select Top n column 
from table order by column desc

OR

select column from table
order by column
limit n

# Find the nth highest value of a variable
select top 1 column from
(select top n column from table order by column desc)
order by column (asc)

OR

select column from
(select column from table order by column desc limit n)
order by column limit 1

# The different types of the JOINs in SQL: (Refer to the attached diagram as well!)
# (INNER) JOIN: Returns records that have matching values in both tables
# LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table
# RIGHT (OUTER) JOIN: Return all records from the right table, and the matched records from the left table
# FULL (OUTER) JOIN: Return all records when there is a match in either left or right table

# Inner Join Syntax
SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;

# Inner join with 3 tables
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

# Left join syntax. Left join is useful when we want to retain all columns in the LEFT table irrespective 
# of matching values in right table. The result is NULL from the right side, if there is no match.
# The below query gives all the customer names and their order ids
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

# The beow query gives the count of orders per customer using LEFT JOIN
SELECT Customers.CustomerName, count(Orders.OrderID)
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName;
