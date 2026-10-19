-- Таблица "departments" (соответствует Kafedry)
CREATE TABLE departments (
    department_id INTEGER NOT NULL,
    faculty_code INTEGER NOT NULL,
    department_name TEXT NOT NULL,
    is_graduating BOOLEAN NOT NULL,
    website TEXT NOT NULL,
    phone_number INTEGER NOT NULL,
    
    CONSTRAINT pk_departments PRIMARY KEY (department_id)
);

-- Таблица "laboratories" (соответствует Laboratories)
CREATE TABLE laboratories (
    laboratory_id INTEGER NOT NULL,
    laboratory_name TEXT NOT NULL,
    activity_type TEXT NOT NULL,
    head_of_laboratory TEXT NOT NULL,
    number_of_workplaces INTEGER NOT NULL,
    has_project_equipment BOOLEAN NOT NULL,
    department_id INTEGER NOT NULL,
    
    CONSTRAINT pk_laboratories PRIMARY KEY (laboratory_id),
    
    CONSTRAINT fk_laboratory_department FOREIGN KEY (department_id) 
        REFERENCES departments(department_id) 
        ON DELETE RESTRICT ON UPDATE CASCADE
);
