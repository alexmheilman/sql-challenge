Departments
-
dept_no PK string
dept_name string

Department_Employees
-
dept_no string FK >- Departments.dept_no
emp_no int FK >- Employees.emp_no 

Department_Managers
-
dept_no string FK >- Departments.dept_no
emp_no int FK >- Employees.emp_no

Employees
-
emp_no PK int 
emp_title_id string FK >- Titles.title_id
birth_date date
first_name string
last_name string
sex string
hire_date date

Titles
-
title_id PK string 
title string

Salaries
-
emp_no int FK >- Employees.emp_no
salary int