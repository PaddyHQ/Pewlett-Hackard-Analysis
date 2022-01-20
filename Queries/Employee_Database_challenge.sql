--Create Table for all retiring employees (multiple possible titles for each)
SELECT 
e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO Retirement_Titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

--Create table for 1 Title per Retiring Employee
SELECT 
DISTINCT ON (emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO Unique_Titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY rt.emp_no ASC;

--Create Count of Retiring Employees by Title
SELECT 
	title,
	COUNT (emp_no)
INTO retiring_titles
FROM
	unique_titles as ut
GROUP BY
	title
ORDER BY 2 DESC;