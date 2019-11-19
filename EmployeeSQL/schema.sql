
CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);
SELECT * FROM departments;

CREATE TABLE dept_emp(
	emp_no INTEGER,
	dept_no VARCHAR,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no,from_date, to_date)
);
SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INTEGER,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date, to_date)
);
SELECT * FROM dept_manager;

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);
SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date, to_date)
);
SELECT * FROM salaries;

CREATE TABLE titles(
	emp_no INTEGER,
	title VARCHAR,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no, from_date, to_date)
);
SELECT * FROM titles;