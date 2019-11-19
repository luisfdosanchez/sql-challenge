--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no AS "Employee No", e.last_name AS "Last Name", e.first_name AS "First Name", e.gender AS "Gender", s.salary AS "Salary"
FROM employees AS e
INNER JOIN salaries AS s 
ON e.emp_no=s.emp_no;

--List employees who were hired in 1986.
SELECT emp_no AS "Employee No", last_name AS "Last Name", first_name AS "First Name", gender AS "Gender"
FROM employees WHERE EXTRACT(YEAR FROM hire_date)=1986;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no AS "Department No", d.dept_name AS "Department Name", 
	m.emp_no AS "Employee No", e.last_name AS "Last Name", 
	e.first_name AS "First Name", m.from_date AS "Start date", 
	m.to_date AS "End date"
FROM dept_manager AS m
LEFT JOIN employees AS e ON m.emp_no=e.emp_no
LEFT JOIN departments AS d ON d.dept_no=m.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no AS "Employee No", e.last_name AS "Last Name", 
	e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp AS t ON e.emp_no=t.emp_no
LEFT JOIN departments AS d ON d.dept_no=t.dept_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no AS "Employee No", e.last_name AS "Last Name", 
	e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp AS t ON e.emp_no=t.emp_no
LEFT JOIN departments AS d ON d.dept_no=t.dept_no
WHERE d.dept_name='Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no AS "Employee No", e.last_name AS "Last Name", 
	e.first_name AS "First Name", d.dept_name AS "Department Name"
FROM employees AS e
LEFT JOIN dept_emp AS t ON e.emp_no=t.emp_no
LEFT JOIN departments AS d ON d.dept_no=t.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--In descending order, list the frequency count of employee last names
SELECT last_name AS "Last Name", COUNT(last_name) AS "Count"
FROM employees
GROUP BY "Last Name"
ORDER BY "Count" DESC;
