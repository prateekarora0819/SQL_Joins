
--JOINS
--========

select * from EMPLOYEES

select * from Company_and_Courses

--FULL OUTER JOIN - You will get everything common columns and non-common columns.
--====================
Select * 
from EMPLOYEES e
FULL OUTER JOIN Company_and_Courses c
ON e.E_ID = c.E_ID


--INNER JOIN - we will get only common columns 
--==============
Select JOBTITLE, Company, Department, e.E_ID
from EMPLOYEES e
INNER JOIN Company_and_Courses c
ON e.E_ID = c.E_ID


--LEFT JOIN - we will get the data from left table and also the common data.
--============
Select AGE, NAME, JOBTITLE, Company
from EMPLOYEES e
LEFT JOIN Company_and_Courses c
ON e.E_ID = c.E_ID


--RIGHT JOIN - we will get the data from right table and also the common data.
--============
Select Company, Department, c.E_ID, Salary_hike
from EMPLOYEES e
RIGHT JOIN Company_and_Courses c
ON e.E_ID = c.E_ID
order by Salary_hike desc

--CROSS JOIN - It will do a cartesian product (12 entries each table 12*12 = 144 rows)
--============
Select * 
from EMPLOYEES e
CROSS JOIN Company_and_Courses c

--2nd method for writing cross join
Select * 
from EMPLOYEES, Company_and_Courses 

--SELF JOIN - Joins with itself
--===========
Select e1.E_ID, e1.NAME, e2.SALARY
from EMPLOYEES e1
JOIN EMPLOYEES e2
on e1.E_ID = e2.E_ID

