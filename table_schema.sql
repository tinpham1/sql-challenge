Create Table titles (
	title_id Varchar Primary Key,
	title Varchar Not Null
);

Create Table departments (
	dept_no Varchar Primary Key,
	dept_name Varchar Not Null
);

Create Table employees (
	emp_no Int Primary Key,
	emp_title_id Varchar References titles(title_id),
	birth_date Date Not Null,
	first_name Varchar Not Null,
	last_name Varchar Not Null,
	sex Varchar Not Null,
	hire_date Date Not Null
);

Create Table dept_manager (
	dept_no Varchar References departments(dept_no),
	emp_no Int References employees(emp_no),
	Primary Key (dept_no, emp_no)
);

Create Table dept_emp (
	emp_no Int References employees(emp_no),
	dept_no Varchar References departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

Create Table salaries (
	emp_no Int Primary Key References employees(emp_no),
	salary Int Not Null
);




