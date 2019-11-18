CREATE TABLE Employees(
	emp_no int not null,
	birth_date date,
	first_name varchar(14),
	last_name varchar(16),
	gender varchar(1),
	hire_date date,
	PRIMARY KEY(emp_no)
);

CREATE TABLE Salaries(
	emp_no int not null,
	salary money,
	from_date date,
	to_date date,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY(emp_no, from_date));

CREATE TABLE Titles(
	emp_no int not null,
	title varchar(20),
	from_date date,
	to_date date,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY(emp_no, title, from_date));

CREATE TABLE Dept_Emp(
	emp_no int not null,
	dept_no varchar(4) not null, 
	from_date date,
	to_date date,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY(emp_no, dept_no));
	
CREATE TABLE dept_manager(
	dept_no varchar(4) not null, 
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	FOREIGN KEY(emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY(dept_no, emp_no)
);

 CREATE TABLE Departments(
	dept_no varchar(4) not null,
	dept_name varchar(40) not null,
	PRIMARY KEY(dept_no),
	UNIQUE (dept_name)
 );
