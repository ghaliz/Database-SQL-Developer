- REQUIREMENTS FOR DATABASE -

- XAMPP
	* Apache --> Start
	* MySQL --> Start

- Open SQL Developer

- Connect JDBC Driver  (Download)
	* Go to Preferences
		* Go to Database
			*Third Party JDBC Driver
			? mysql-connector-java (java/jar)

- Create/connect database
	* Connection name
	* Username
	* Password
	* Connection type
	* Hostname
	* Port
    -->Save

- Database --> localhost@database_name

- Add tables and info type

- To add info into the tables
	* insert into table_name values(value1, value2...);
- To execute all table
	* select *
	from table_name;
- To delete a table
	* delete
	from table_name;
- To delete a specific part or values on the table just add
	*where table_name in(value1,value2...);



-To close database
	• Save
	• Close Oracle SQL Developer
	• Stop services in XAMPP
		? Apache
		? MySQL

