-- creating category table
CREATE TABLE category (
	category_id VARCHAR(250) NOT NULL PRIMARY KEY,
	category_name VARCHAR(250) NOT NULL
) ;

-- creating subcategory table
CREATE TABLE subcategory (
	subcategory_id VARCHAR(250) NOT NULL PRIMARY KEY,
	subcategory_name VARCHAR(250) NOT NULL
) ;

-- creating contact table
CREATE TABLE contact (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(250) NOT NULL,
	last_name VARCHAR(250) NOT NULL,
	email VARCHAR(250)
) ; 

-- creating campaign table
CREATE TABLE campaign (
    cf_id VARCHAR(250) PRIMARY KEY,
    contact_id INT REFERENCES contact(contact_id),
    company_name VARCHAR(250),
    description VARCHAR(250),
    goal DOUBLE PRECISION,
    pledged DOUBLE PRECISION,
    outcome VARCHAR(250),
    backers_count INT,
    country VARCHAR(250),
    currency VARCHAR(250),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(250) REFERENCES category(category_id),
    subcategory_id VARCHAR(250) REFERENCES subcategory(subcategory_id)
);

-- display category
SELECT * FROM category;

-- display subcategory
SELECT * FROM subcategory;

-- display contact;
SELECT * FROM contact;

-- display campaign
SELECT * FROM campaign;


