DROP TABLE IF EXISTS department_employee;
CREATE TABLE department_employee(emp_no Integer, 
			dept_no VARCHAR(2550),
			from_date Date DATE,
			to_date Date DATE);

DROP TABLE IF EXISTS departments;
CREATE TABLE departments(dept_no VARCHAR(255),
			department_name VARCHAR(255)
			CONSTRAINT "pk_departments"
			PRIMARY KEY("dept_no"));

SELECT * FROM dep_manager;

DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager(dept_no VARCHAR(255),
			emp_no VARCHAR(255),
			from_date DATE,
			to_date DATE);
DROP TABLE IF EXISTS "employees"("emp_no" INTEGER NOT NULL,
			"birth_date" DATE NOT NULL,
			"first_name" VARCHAR(255) NOT NULL,
			"last_name" VARCHAR(255) NOT NULL,
			"gender" VARCHAR(255 NOT NULL),
			"hire_date" NOT NULL,
			CONSTRAINT "pk_employees"
			PRIMARY KEY("emp_no"));
DROP TABEL IF EXISTS salaries;
CREATE TABLE salaries(emp_no INTEGER,
			salary INTEGER,
			from_date DATE,
			to_date DATE);
DROP TABLE IF EXISTS titles;
CREATE TABLE titles(emp_no INTEGER,
			title VARCHAR(255),
			from_date DATE,
			to_date DATE);
