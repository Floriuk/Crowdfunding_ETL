CREATE TABLE subcategory (
    subcategory_id VARCHAR(30) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(30) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(30) PRIMARY KEY NOT NULL,
    category VARCHAR(30) NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE campaign (
    cf_id INT NULL,
    contact_id INT,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal NUMERIC NOT NULL,
    pledged NUMERIC NOT NULL,
    outcome VARCHAR(30) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(30) NOT NULL,
    currency VARCHAR(30) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(30),
    subcategory_id VARCHAR(30),
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);
SELECT * FROM subcategory;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM campaign;
