BEGIN TRANSACTION;
CREATE TABLE Transactions(
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
client1_id INTEGER,
client2_id INTEGER,
client3_id INTEGER,
client4_id INTEGER,
client5_id INTEGER,
client6_id INTEGER,
client7_id INTEGER,
client8_id INTEGER,
seller_agent_id INTEGER,
buyer_agent_id INTEGER,
transaction_agent VARCHAR (1),
start_date VARCHAR (20),
close_date VARCHAR (20),
list_price DECIMAL,
sold_price DECIMAL,
buyer_commision DECIMAL,
seller_commision DECIMAL,
paid_to_brokerage DECIMAL,
address_id INTEGER,
 INTEGER
);
CREATE TABLE "Sphere" (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`type`	VARCHAR,
	`address_id`	INTEGER,
	`contactinfo_id`	INTEGER
);
CREATE TABLE "Industry" (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`type`	VARCHAR,
	`address_id`	INTEGER,
	`contactinfo_id`	INTEGER
);
CREATE TABLE ContactInfo (
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
First_name VARCHAR (128),
Last_name VARCHAR (128),
email VARCHAR,
cell_phone VARCHAR (20),
Inspection VARCHAR,
address_id INTEGER
);
CREATE TABLE "Client" (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`birthday`	VARCHAR(20),
	`rating`	VARCHAR(2),
	`contract_date`	VARCHAR,
	`contract_terminate`	VARCHAR,
	`num_of_showings`	INTEGER,
	`address_id`	INTEGER,
	`contactinfo_id`	INTEGER
);
CREATE TABLE "Address" (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Street`	VARCHAR(200),
	`City`	VARCHAR(128),
	`Zip`	VARCHAR(15),
	`State_`	CHAR(2),
	`Inspection`	VARCHAR
);
COMMIT;
