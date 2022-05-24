create table titles(
	title_id VARCHAR not null,
	title VARCHAR not null,
	primary key (title_id)
);

create table employees (
	emp_no int not null,
	emp_title_id VARCHAR not null, 
	birth_date Date not null,
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	sex VARCHAR not null,
	hire_date Date not null,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
	primary key (emp_no)
);

create table departments(
	dept_no VARCHAR not null,
	dept_name  VARCHAR not null,
	primary key (dept_no)
) ;

create table dept_manager(
	dept_no VARCHAR not null,
	emp_no int not null,
	foreign key (dept_no) references  departments(dept_no),
	foreign key (emp_no) references  employees(emp_no),
	primary key (dept_no,emp_no)
);

create table dept_emp(
	emp_no int not null,
	dept_no VARCHAR not null,
	foreign key (emp_no) references  employees(emp_no),
	foreign key (dept_no) references  departments(dept_no),
	primary key (emp_no,dept_no)
);

create table salaries(
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references  employees(emp_no),
		primary key (emp_no)
);






