# REDCap-Data-Analysis-using-SSMS-and-Python. I was given a task to join two tables and then form a new table with the joined values.
One had a primary key and the other had a secondary key.
For this I used WITH ..AS, SELECT INTO, LEFT JOIN ,ALTER TABLE and UPDATE functions. 
Then I was given the responsibility to find the unmatched values of the parent(left) table with the child table.
For this I had to use EXCEPT function.
Since the parent table had multiple values in multiple columns that had unmatched values, I had to create multiple EXCEPT functions 
and used UNION function to add rows of every set of values for each column and stored in  new table using SELECT INTO function.
