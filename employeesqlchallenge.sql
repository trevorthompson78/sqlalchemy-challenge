SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

SELECT * FROM employees
WHERE hire_date > '12/31/1985'and hire_date <'1/1/1987';

SELECT * 
FROM employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%';
 
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count DESC;	

SELECT d.dept_no, d.dept_name, dm.emp_no,
		a.last_name,a.first_name,dm.from_date,dm.to_date 
		FROM departments d
		JOIN dept_manager dm ON d.dept_no=dm.dept_no
		JOIN employees a ON dm.emp_no=a.emp_no;

SELECT c.emp_no, c.last_name, c.first_name, b.dept_name
		FROM employees c
		JOIN department_employee bc ON c.emp_no=bc.emp_no
		JOIN departments b ON bc.dept_no=b.dept_no;

 SELECT c.emp_no, c.last_name, c.first_name, b.dept_name
		FROM employees c
		JOIN department_employee bc ON c.emp_no=bc.emp_no
		JOIN departments b ON bc.dept_no=b.dept_no AND dept_name = 'Sales';

 SELECT c.emp_no, c.last_name, c.first_name, b.dept_name
		FROM employees c
		JOIN department_employee bc ON c.emp_no=bc.emp_no
		JOIN departments b ON bc.dept_no=b.dept_no AND dept_name = 'Development' OR dept_name = 'Sales';


		







