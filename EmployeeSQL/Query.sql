--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
From employees as emp
 left join salaries as sal
  on (emp.emp_no = sal.emp_no)
Order by emp.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.

select emp.emp_no, emp.last_name, emp.first_name, emp.hire_date
From employees as emp
Where hire_date between '1986-1-1' and '1986-12-31'
Order by emp.emp_no;

--3.List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.

select dm.dept_no, dm.emp_no, d.dept_name, emp.hire_date, emp.first_name, emp.last_name
From dept_manager as dm
  inner join departments as d
    on (dm.dept_no = d.dept_no)
  inner join employees as emp
    on (dm.emp_no = emp.emp_no)	
Order by dm.emp_no;


--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select de.emp_no, de.dept_no, d.dept_name,  emp.first_name, emp.last_name
From dept_emp as de
  inner join departments as d
    on (de.dept_no = d.dept_no)
  inner join employees as emp
    on (de.emp_no = emp.emp_no)	
Order by de.emp_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select emp.first_name, emp.last_name, emp.sex
From employees as emp
Where emp.first_name = 'Hercules'  and emp.last_name Like 'B%'
Order by emp.emp_no;


--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.

select de.emp_no, de.dept_no, d.dept_name,  emp.first_name, emp.last_name
From dept_emp as de
  inner join departments as d
    on (de.dept_no = d.dept_no)
  inner join employees as emp
    on (de.emp_no = emp.emp_no)	
WHere d.dept_name = 'Sales'
Order by de.emp_no;

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select de.emp_no, de.dept_no, d.dept_name,  emp.first_name, emp.last_name
From dept_emp as de
  inner join departments as d
    on (de.dept_no = d.dept_no)
  inner join employees as emp
    on (de.emp_no = emp.emp_no)	
WHere d.dept_name = 'Sales' or  d.dept_name = 'Development'
Order by de.emp_no;

--8.List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

select last_name, count(last_name)
from employees
group by last_name
Order by count(last_name);



