-- DATA ENGINEERING 

-- Create Titles table
   CREATE TABLE titles (
	     title_id varchar PRIMARY KEY,
	     title varchar not NULL
);
   SELECT * FROM titles;

--Create Employees's table
   CREATE TABLE employees(
	     emp_no varchar(10) PRIMARY KEY,
	     emp_title_id VARCHAR(10) NOT NULL,
	     birth_date DATE NOT NULL,
	     first_name VARCHAR NOT NULL,
	     last_name VARCHAR NOT NULL,
	     sex VARCHAR NOT NULL,
	     hire_date DATE NOT NULL,
	     Foreign key (emp_title_id) references titles(title_id)	    
);
   SELECT *FROM employees;

--Table of Departments:

   CREATE TABLE departments(
	     dept_no VARCHAR (4) NOT NULL,
	     dept_name VARCHAR (40) NOT NULL,
	     PRIMARY KEY (dept_no),
	     UNIQUE (dept_name)
);

   SELECT *FROM departments;
 
-- Create table Dept_manager

   CREATE TABLE dept_manager(
             dept_no VARCHAR (4) NOT NULL,
	         emp_no VARCHAR(10),
             FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
             FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	         PRIMARY KEY (emp_no, dept_no)
);

   SELECT *FROM dept_manager;

-- Create Department Employees table

   CREATE TABLE dept_emp(
             emp_no VARCHAR(10) NOT NULL,
	         dept_no VARCHAR NOT NULL,
             FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
             FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
             PRIMARY KEY (emp_no, dept_no)
);

   SELECT * from dept_emp;

-- Create salaries's table:

   CREATE TABLE salaries(
	        emp_no VARCHAR (10) NOT NULL,
	        salary INT NOT NULL,
	        FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	        PRIMARY KEY (emp_no)
);

   SELECT *FROM salaries;