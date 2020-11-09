
SELECT departments.dept_no, departments.dept_name, AVG(salaries.salary)
  from employees
  join salaries on employees.emp_no = salaries.emp_no
  join dept_emp on dept_emp.emp_no = employees.emp_no
  join departments on departments.dept_no = dept_emp.dept_no
where salaries.from_date <= curdate() and salaries.to_date > curdate();

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, MAX(salaries.salary)
  from employees
  join salaries  on employees.emp_no = salaries.emp_no
  join dept_emp on dept_emp.emp_no = employees.emp_no
  join departments on departments.dept_no = dept_emp.dept_no;

  DELETE FROM salaries WHERE (SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, MAX(salaries.salary)
  from employees
  join salaries  on employees.emp_no = salaries.emp_no
  join dept_emp on dept_emp.emp_no = employees.emp_no
  join departments on departments.dept_no = dept_emp.dept_no);

  select departments.dept_no, departments.dept_name, count(*)
  from employees
  join dept_emp on dept_emp.emp_no = employees.emp_no
  join departments on departments.dept_no = dept_emp.dept_no;