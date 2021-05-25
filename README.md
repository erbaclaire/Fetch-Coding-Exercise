# Fetch-Coding-Exercise

Main directory
- relational-schema.pdf is the pdf of my relational database schema
- data-issues-and-stakeholder-communication.pdf is the pdf for part 3 and 4.

Data directory
- Houses the brands, receipts, and users json files.

CSV Tables directory
- This folder has csv versions of my relational database tables. 

Code directory
- This folder houses all of the code.
- The read-in-unstructured-data python script reads in the brands, receipts, and users json files and puts them in to pandas dataframes. It then save those tables in CSV format. 
- The sql-query.sql file has my SQL query to answer stakeholder questions. I do not have access to a SQL server, so I could not put my tables from the CSV Tables directory in to a server and run the code. But the SQL code is correct in itself if I were to have a SQL server.
- The data-exploration python script explores data quality issues. I inquire about these in my data-issues-and-stakeholder-communication.pdf