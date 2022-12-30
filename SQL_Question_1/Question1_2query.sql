CREATE TABLE EmployeeDetails(
	Emp_id VARCHAR(30) NOT NULL PRIMARY KEY,
    Emp_name VARCHAR(30) NOT NULL,
    Job_name VARCHAR(30) NOT NULL,
    Manager_id INT NOT NULL,
    Hire_date DATE NOT NULL,
    Salary INT NOT NULL,
    Dep_id INT NOT NUll
);