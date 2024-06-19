# Database Model for Guvi Zen Class with dbdiagram.io
This guide provides step-by-step instructions and guidelines for creating a database model using dbdiagram.io, a popular online tool for designing database schemas.

# Getting Started
1.Access dbdiagram.io: Open your web browser and visit dbdiagram.io.

2.Sign In or Create an Account: If you already have an account, sign in. Otherwise, create a new account to save your work.

# Designing Your Database Model
1.Create a New Diagram:

2.Click on the "Create New Diagram" button.
3.Give your diagram a name, such as "Guvi Zen Class Database Model."
# Add Tables:

1.Click the "Table" icon to add tables to your diagram.
2.Name your tables to reflect the entities in your database model.
# Add Columns:

1.Inside each table, add columns to define the attributes of your entities.
2.Specify the data type for each column (e.g., INT, VARCHAR, DATE).
3.Indicate primary keys, foreign keys, and unique constraints.
# Establish Relationships:

1.Use lines to connect tables and define relationships (one-to-one, one-to-many, many-to-many).
2.Label the relationships to clarify their nature.

**Example Tables and Relationships for Zen Class Database**

# Students Table
1.studentid (Primary Key, INT, AUTO_INCREMENT)
2.studentname (VARCHAR(255))
3.mobilenumber (VARCHAR(255), UNIQUE)
4.email (VARCHAR(255), UNIQUE)
5.mentorname (VARCHAR(255))
6.batchid (INT)
7.batchname (VARCHAR(255))

# Tasks Table
1.taskid (Primary Key, INT, AUTO_INCREMENT)
2.taskname (VARCHAR(255), UNIQUE)
3.studentid (INT)
4.mentorid (INT)
5.mentorname (VARCHAR(25))
6.batchname (VARCHAR(50))

# Mentors Table
1.mentorid (Primary Key, INT, AUTO_INCREMENT)
2.email (VARCHAR(50), UNIQUE)
3.contactno (VARCHAR(15), UNIQUE)
4.assignedbatch (VARCHAR(100))
5.Batches Table
6.batchid (Primary Key, INT, AUTO_INCREMENT)
7.batchname (VARCHAR(255))
8.totalstudents (INT)
9.mentorid (INT)

# Queries Table
1.queryid (Primary Key, INT, AUTO_INCREMENT)
2.querytext (TEXT)
3.studentid (INT)
4.mentorid (INT)
5.Dashboards Table
6.dashboardid (Primary Key, INT, AUTO_INCREMENT)
7.studentid (INT)
8.mentorid (INT)
9.batchid (INT)

# Mock Interviews Table
1.mockinterviewid (Primary Key, INT, AUTO_INCREMENT)
2.studentid (INT)
3.mentorid (INT)
4.batchid (INT)

# Foreign Key Relationships
The studentinfo table references the batchinfo table via batchid.
The taskinfo table references the studentinfo table via studentid.
The taskinfo table references the mentorinfo table via mentorid.
The batchinfo table references the mentorinfo table via mentorid.
The queryinfo table references the studentinfo table via studentid.
The queryinfo table references the mentorinfo table via mentorid.
The dashboardinfo table references the studentinfo table via studentid.
The dashboardinfo table references the mentorinfo table via mentorid.
The dashboardinfo table references the batchinfo table via batchid.
The mockinterviewinfo table references the studentinfo table via studentid.
The mockinterviewinfo table references the mentorinfo table via mentorid.
The mockinterviewinfo table references the batchinfo table via batchid.

# Exporting Your Model
**Export as SQL or Image:**
1.Once your model is complete, export it as SQL code and as an image.
2.You can use the generated SQL code to create your database schema.
3.Sharing and Collaboration

# Share Your Diagram:
1.Share your diagram by clicking the "Share" button and providing collaborators with the link.
2.Click here to view this db design: https://dbdiagram.io/d/Design-DB-Guvi-zen-class-66730ede5a764b3c72e7fe6d
