CREATE TABLE Dept_Emp (
  dept_no VARCHAR NOT NULL,
     emp_no INT NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)
);