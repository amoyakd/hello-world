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
