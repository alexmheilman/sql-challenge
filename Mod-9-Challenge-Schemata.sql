-- Create Employee Table 
create table employees(
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date,
	first_name varchar not null,
	last_name varchar not null, 
	sex varchar,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
)

-- Create Departments Table
create table departments(
	dept_no varchar not null, 
	dept_name varchar not null,
	primary key (dept_no)
)

-- Create dept_emp tables
create table dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
)

-- Create dept_manager table
create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
)

-- Create titles table
create table titles(
	title_id varchar not null,
	title varchar not null,
	primary key (title_id)
)

-- Create salaries table
create table salaries(
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
)