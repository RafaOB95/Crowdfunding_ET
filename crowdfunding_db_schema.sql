/*A Crowdfunding Database is Created (25 points)

A database schema labeled, crowdfunding_db_schema.sql is created (5 points)

A crowdfunding_db is created using the crowdfunding_db_schema.sql file (5 points)

The database has the appropriate primary and foreign keys and relationships (5 points)

Each CSV file is imported into the appropriate table without errors (5 points)

The data from each table is displayed using a SELECT * statement (5 points)*/

-- creating 'Category' table
CREATE TABLE Category (
	category_id VARCHAR(300) NOT NULL PRIMARY KEY,
	category VARCHAR(300) NOT NULL
);

-- creating 'Subcategory' table
CREATE TABLE Subcategory (
	subcategory_id VARCHAR(300) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(300) NOT NULL
);

-- creating 'Contacts' table
CREATE TABLE Contacts (
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(300) NOT NULL,
	last_name VARCHAR(300) NOT NULL,
	email VARCHAR(300) NOT NULL
);

-- creating 'Campaign' table 
CREATE TABLE Campaign (
	cf_id INTEGER NOT NULL PRIMARY KEY,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR(300) NOT NULL,
	description VARCHAR(300) NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR(300) NOT NULL,
	backers_count INTEGER NOT NULL,
	country VARCHAR(300) NOT NULL,
	currency VARCHAR(300) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(300) NOT NULL,
	subcategory_id VARCHAR(300) NOT NULL,
	-- join the primary keys of the tables already created
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- Viewing the tables 
SELECT * FROM Campaign;
SELECT * FROM Category;	
SELECT * FROM Subcategory;
SELECT * FROM Contacts;

