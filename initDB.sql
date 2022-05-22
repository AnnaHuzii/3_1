CREATE TABLE developers (
    id IDENTITY PRIMARY KEY,
    full_name VARCHAR(250),
    birth_date DATE,
    sex VARCHAR(10)
        CHECK (sex IN ('male', 'female', 'unknown'))
        NOT NULL,
    email VARCHAR(250),
    skypr VARCHAR(250)
   );
CREATE TABLE skills (
    id IDENTITY PRIMARY KEY,
    industry VARCHAR(10)
        CHECK (industry IN ('Java', 'C++', 'C#', 'JS'))
        NOT NULL,
    skill_level VARCHAR(10)
        CHECK (skill_level IN ('Junior', 'Middle', 'Senior'))
        NOT NULL
    );
CREATE TABLE companies (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(200),
    description VARCHAR(150)
);
CREATE TABLE customers (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(200),
    EDRPOU INT,
    product VARCHAR(150)
);
CREATE TABLE project (
    id IDENTITY PRIMARY KEY,
    name VARCHAR(200),
    description VARCHAR(150),
    company_id BIGINT NOT NULL,
    customer_id BIGINT NOT NULL
);
CREATE TABLE projects_developers (
    project_id BIGINT NOT NULL,
    developer_id BIGINT NOT NULL,
    PRIMARY KEY (project_id, developer_id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(developer_id) REFERENCES developers(id)
);

CREATE TABLE developers_skills (
    developer_id BIGINT NOT NULL,
    skill_id BIGINT NOT NULL,
    PRIMARY KEY (developer_id, skill_id),
    FOREIGN KEY(developer_id) REFERENCES developers(id),
    FOREIGN KEY(skill_id) REFERENCES skills(id)
);