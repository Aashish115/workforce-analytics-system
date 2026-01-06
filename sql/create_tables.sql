CREATE TABLE department (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL,
    budget INTEGER
);

CREATE TABLE employee (
    employee_id TEXT PRIMARY KEY,
    employee_name TEXT NOT NULL,
    department_id INTEGER,
    job_title TEXT,
    hire_date DATE,
    salary INTEGER,
    FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE performance (
    performance_id TEXT PRIMARY KEY,
    employee_id TEXT,
    performance_score INTEGER,
    review_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE attendance (
    attendance_id TEXT PRIMARY KEY,
    employee_id TEXT,
    days_present INTEGER,
    days_absent INTEGER,
    month TEXT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE sales (
    sales_id TEXT PRIMARY KEY,
    employee_id TEXT,
    revenue INTEGER,
    sale_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);
