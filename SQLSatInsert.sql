USE SQLSat;
GO


--temp tables to store data from excel before entering it to tables
INSERT INTO Presentation (Presentation_title,Presenter_name, City, Diff_id)
SELECT PRESTITLE,PRESNAME, CITY,(SELECT Diff_id FROM Difficulty WHERE Diff_title = LEVELS) FROM TEMPPRES

SELECT * FROM Difficulty

SELECT * FROM Presentation	
	

DROP TABLE ATTENDEE_REG;
CREATE TABLE ATTENDEE_REG(
	AR_ID		INT IDENTITY NOT NULL,
	FNAME		VARCHAR(50) NOT NULL,
	LNAME		VARCHAR(50) NOT NULL,
	P_ADDRESS	VARCHAR (128) NOT NULL,
	CITY		VARCHAR(128) NOT NULL,
	ZIPCODE		VARCHAR(10) NOT NULL,
	STATES		VARCHAR(50) NOT NULL,
	EMAIL		VARCHAR(50) NOT NULL,
PRIMARY KEY(AR_ID)
);

CREATE TABLE TEMPSPONS(
TEMP_ID INT IDENTITY NOT NULL,
S_NAME	VARCHAR(50) NOT NULL,
S_TYPE VARCHAR(20) NOT NULL,
PRIMARY KEY (TEMP_ID)
);

CREATE TABLE TEMPPRES(
TP_ID  INT IDENTITY NOT NULL,
PRESTITLE VARCHAR(128) NOT NULL,
PRESNAME  VARCHAR(70) NOT NULL,
CITY		VARCHAR(70) NOT NULL,
LEVELS		VARCHAR(25) NOT NULL,
PRIMARY KEY (TP_ID)
);


--INSERTS 
INSERT INTO TEMPPRES(PRESTITLE, PRESNAME,LEVELS,CITY) VALUES
('A dive into Data Quality Services','Steve Simon','Intermediate','New York'),
('A Dynamic World Demands Dynamic SQL','Jeremiah Peschka','Intermediate','Kiyv'),
('A Dynamic World Demands Dynamic SQL','Jeremiah Peschka','Intermediate','Kiyv'),
('Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)','Kevin Goff','Beginner','Budapest'),
('AlwaysOn: Improve reliability and reporting performance with one cool tech','Chris Seferlis','Beginner','New York'),
('An introduction to Data Mining','Steve Simon','Intermediate','Kiyv'),
('An Introduction to Database Design','Mohammad Yusuf','Beginner','New York'),
('Autogenerating a process data warehouse','Kennie Pontoppidan','Advanced','New York'),
('Automate your daily checklist with PBM and CMS','John Sterrett','Intermediate','Budapest'),
('Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters','Thomas Grohser','Intermediate','New York'),
('Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters','Thomas Grohser','Intermediate','Kiev'),
('Automating Execution Plan Analysis','Joe Chang','Advanced','Kiev'),
('Automating Execution Plan Analysis','Joe Chang','Advanced','New York'),
('Automating SQL Server using PowerShell','Michael Wharton','Intermediate','New York'),
('Balanced Scorecards using SSRS','Sunil Kadimdiwan','Intermediate','Budapest'),
('Baselines and Performance Monitoring with PAL','Mike Walsh','Beginner','New York'),
('Basic Database Design','John Miner','Beginner','New York'),
('Basic Database Programming','John Miner','Beginner','Kiev'),
('Become a BI Independent Consultant!','James Serra','Beginner','Budapest'),
('Becoming a Top DBA--Learning Automation in SQL Server','Joseph DAntoni','Beginner','Kiev'),
('Best Practices Document','Paresh Motiwala','Intermediate','Kiev'),
('Best Practices for Efficient SSRS Report Creation','Mickey Stuewe','Beginner','New York'),
('Biggest Loser: Database Edition','John Miner','Intermediate','New York'),
('Building a BI Solution in the Cloud','Stacia Misner','Intermediate','Budapest'),
('Building an Effective Data Warehouse Architecture','James Serra','Beginner','New York'),
('Building an Effective Data Warehouse Architecture with the cloud and MPP','James Serra','Beginner','New York'),
('Bulk load and minimal logged inserts','David Peter Hansen','Advanced','New York'),
('Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask','Steve Simon','Intermediate','New York'),
('Challenges to designing financial warehouses, lessons learnt','Steve Simon','Intermediate','New York'),
('Change Data Capture in SQL Server 2008/2012','Kevin Goff','Intermediate','New York'),
('Changing Your Habits to Improve the Performance of Your T-SQL','Mickey Stuewe','Beginner','Kiev'),
('Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments','Allan Hirt and SIOS Technology','Beginner','Kiev'),
('Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments','Allan Hirt','Non-Technical','Kiev'),
('Coffee Break','SQLSatruday 364','Non-Technical','Budapest'),
('Creating A Performance Health Repository - using MDW','Robert Pearl','Beginner','Kiev'),
('Creating efficient and effective SSRS BI Solutions','Steve Simon','Intermediate','Kiev'),
('Creating efficient and effective SSRS BI Solutions','Steve Simon','Intermediate','New York'),
('Data Partitioning','John Flannery','Intermediate','New York'),
('Data Tier Application Testing with NUnit and Distributed Replay','John Flannery','Intermediate','New York'),
('Database design for mere developers','Steve Simon','Intermediate','Budapest'),
('Database design for mere developers','Steve Simon','Intermediate','New York'),
('Database Design: Solving Problems Before they Start!','Edward Pollack','Beginner','New York'),
('Database Modeling and Design','Mohammad Yusuf','Intermediate','New York'),
('Database Virtualization and Drinking out of the Fire Hose','Michael Corey','Intermediate','New York'),
('DAX and the tabular model','Steve Simon','Intermediate','Kiev'),
('DBA FOR DUMMIES','Robert Pearl','Beginner','Budapest'),
('Dealing With Difficult People','Gigi Bell','Beginner','Kiev'),
('Development Lifecycle with SQL Server Data Tools and DACFx','John Flannery','Intermediate','Kiev'),
('Did You Vote Today? A DBAs Guide to Cluster Quorum','Allan Hirt','Advanced','Kiev'),
('Dimensional Modeling Design Patterns: Beyond Basics','Jason Horner','Intermediate','Kiev'),
('Dimensional Modeling Design Patterns: Beyond Basics','Jason Horner','Intermediate','Budapest'),
('Diving Into Query Execution Plans','Edward Pollack','Intermediate','New York'),
('Dynamic SQL: Writing Efficient Queries on the Fly','Edward Pollack','Beginner','Kiev'),
('Easy Architecture Design for HA and DR','Brent Ozar','Intermediate','New York'),
('Enhancing your career: Building your personal brand','James Serra','Beginner','New York'),
('Establishing a SLA','Thomas Grohser','Intermediate','New York'),
('ETL not ELT! Common mistakes and misconceptions about SSIS','Paul Rizza','Advanced','Budapest'),
('Event Kickoff and Networking','SQLSaturday 364','Non-Technical','New York'),
('Execution Plans: What Can You Do With Them?','Grant Fritchey','Intermediate','New York'),
('Faster, Better Decisions with Self Service Business Analytics','Sayed Saeed','Intermediate','New York'),
('Full Text Indexing Basics','John Miner','Beginner','Budapest'),
('Get your Mining Model Predictions out to all','Steve Simon','Intermediate','New York'),
('Getting a job with Microsoft','Paul Rizza','Non-Technical','New York'),
('Graph Databases for SQL Server Professionals','Stéphane Fréchette','Intermediate','New York'),
('Hacking Exposé - Using SSL to Protect SQL Connections','Chris Bell','Intermediate','New York'),
('Hacking the SSIS 2012 Catalog','Andy Leonard','Beginner','Budapest'),
('Hidden in plain sight: master your tools','Varsham Papikian','Intermediate','New York'),
('Highly Available SQL Server in Windows Azure IaaS','David Bermingham','Intermediate','New York'),
('How to Make a LOT More Money as a Consultant','James Serra','Beginner','New York'),
('How to Think Like the Engine','Brent Ozar','Intermediate','New York'),
('Hybrid Cloud Scenarios with SQL Server 2014','George Walters','Intermediate','Budapest'),
('Hybrid Solutions: The Future of SQL Server Disaster Recovery','Allan Hirt','Intermediate','Budapest'),
('Implementing Data Warehouse Patterns with the Microsoft BI Tools','Kevin Goff','Intermediate','Budapest'),
('Inroduction to Triggers','Jack Corbett','Beginner','Budapest'),
('Integrating Reporting Services with SharePoint','Kevin Goff','Intermediate','New York'),
('Integration Services (SSIS) for the DBA','David Peter Hansen','Intermediate','New York'),
('Introducing Power BI','Stacia Misner','Beginner','New York'),
('Introduction to Database Recovery','John Flannery','Beginner','New York'),
('Introduction to High Availability with SQL Server','John Sterrett','Beginner','New York'),
('Introduction to Powershell for DBAs','John Sterrett','Beginner','New York'),
('Introduction to SQL Server - Part 1','Brandon Leach','Beginner','New York'),
('Introduction to SQL Server - Part 2','Brandon Leach','Beginner','New York'),
('Is That A Failover Cluster On Your Laptop/Desktop?','Allan Hirt','Intermediate','New York'),
('Leaving the Windows Open','Jeremiah Peschka','Intermediate','New York'),
('Lunch Break','SQLSaturday 364','Non-Technical','New York'),
('Lunchtime Keynote','SQLSaturday 364','Non-Technical','New York'),
('Master Data Services Best Practices','Steve Simon','Intermediate','New York'),
('Master Data Services Disaster Recovery','Steve Simon','Intermediate','New York'),
('Mind your language!! Cursors are a dirty word','Steve Simon','Intermediate','New York'),
('Modern Data Warehousing','James Serra','Beginner','New York'),
('Monitoring Server health via Reporting Services dashboards','Steve Simon','Intermediate','New York'),
('Monitoring SQL Server using Extended Events','Hilary Cotter','Beginner','New York'),
('Multidimensional vs Tabular - May the Best Model Win','Stacia Misner','Intermediate','New York'),
('Murder They Wrote','Jason Brimhall','Intermediate','New York'),
('Never Have to Say "Mayday!!!" Again','Mike Walsh','Beginner','New York'),
('Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.','Steve Simon','Intermediate','New York'),
('Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server','Kevin Schenega','Non-Technical','Budapest'),
('Optimizing Protected Indexes','Chris Bell','Intermediate','Budapest'),
('Partitioning as a design pattern','Kennie Pontoppidan','Advanced','Budapest'),
('Power BI Components in Microsofts Self-Service BI Suite','Todd Chittenden','Beginner','New York'),
('Power to the people!!','Steve Simon','Intermediate','Kiyv'),
('PowerShell Basics for SQLServer','Michael Wharton','Beginner','Kiyv'),
('PowerShell for the Reluctant DBA / Developer','Jason Horner','Beginner','Kiyv'),
('Prevent Recovery Amnesia – Forget the Backups','Chris Bell','Beginner','Kiyv'),
('Query Optimization Crash Course','Edward Pollack','Beginner','Kiyv'),
('Raffle','SQLSaturday 364','Non-Technical',''),
('Rapid Application Development with Master Data Services','Steve Simon','Intermediate','Kiyv'),
('Recovery and Backup for Beginners','Mike Hillwig','Beginner','Kiyv'),
('Reduce, Reuse, Recycle: Automating Your BI Framework','Stacia Misner','Intermediate','Kiyv'),
('Registrations','SQLSaturday 364','Non-Technical',''),
('Replicaton Technologies','Hilary Cotter','Advanced','Kiyv'),
('Reporting Services for Mere DBAs','Jason Brimhall','Intermediate','Kiyv'),
('Scaling with SQL Server Service Broker','Hilary Cotter','Advanced','Kiyv'),
('Scaling with SQL Server Service Broker','Hilary Cotter','Advanced','Kiyv'),
('Self-Service Data Integration with Power Query','Stéphane Fréchette','Beginner','Kiyv'),
('Shortcuts to Building SSIS in .Net','Paul Rizza','Beginner','Kiyv'),
('So You Want To Be A Consultant?','Allan Hirt','Beginner','Kiyv'),
('SQL anti patterns','Kennie Pontoppidan','Advanced','Kiyv'),
('SQL Server 2012/2014 Columnstore index','Kevin Goff','Intermediate','Kiyv'),
('SQL Server 2012/2014 Performance Tuning All Up','George Walters','Intermediate','Kiyv'),
('SQL Server 2014 Data Access Layers','Steve Simon','Intermediate','Kiyv'),
('SQL Server 2014 New Features','George Walters','Intermediate','Kiyv'),
('SQL Server AlwaysOn Availability Groups','George Walters','Beginner','Kiyv'),
('SQL Server and the Cloud','David Peter Hansen','Beginner','Kiyv'),
('SQL Server Compression and what it can do for you','Jason Brimhall','Advanced','Kiyv'),
('SQL Server Reporting Services 2014 on Steroids!!','Steve Simon','Intermediate','Kiyv'),
('SQL Server Reporting Services Best Practices','Steve Simon','Intermediate','Kiyv'),
('SQL Server Reporting Services, attendees choose','Kevin Goff','Intermediate','Kiyv'),
('SQL Server Storage Engine under the hood','Thomas Grohser','Intermediate','Kiyv'),
('SQL Server Storage internals: Looking under the hood.','Brandon Leach','Advanced','Kiyv'),
('SSIS 2014 Data Flow Tuning Tips and Tricks','Andy Leonard','Beginner','Kiyv'),
('Standalone to High-Availability Clusters over Lunch—with Time to Spare','Carl Berglund','Intermediate','Budapest'),
('Stress testing SQL Server','Hilary Cotter','Advanced','Kiyv'),
('Table partitioning for Azure SQL Databases','John Miner','Beginner','Kiyv'),
('Testing','Melissa Riley','Beginner','Kiyv'),
('The future of the data professional','Adam Jorgensen','Beginner','Kiyv'),
('The Quest for the Golden Record:MDM Best Practices','Dennis Messina','Beginner','Budapest'),
('The Quest to Find Bad Data With Data Profiling','Richie Rump','Intermediate','Budapest'),
('The Spy Who Loathed Me - An Intro to SQL Security','Chris Bell','Beginner','Budapest'),
('Tired of the CRUD? Automate it!','Jack Corbett','Intermediate','Budapest'),
('Top 5 Ways to Improve Your triggers','Aaron Bertrand','Intermediate','Budapest'),
('Tricks that have saved my bacon','Greg Moore','Beginner','Budapest'),
('T-SQL : Bad Habits & Best Practices','Aaron Bertrand','Beginner','Budapest'),
('T-SQL for Application Developers - Attendees chose','Kevin Goff','Intermediate','Budapest'),
('Tune Queries By Fixing Bad Parameter Sniffing','Grant Fritchey','Intermediate','Budapest'),
('Using Extended Events in SQL Server','Jason Brimhall','Advanced','Budapest'),
('Watch Brent Tune Queries','Brent Ozar','Intermediate','Budapest'),
('What every SQL Server DBA needs to know about Windows Server 10 Technical Preview','David Bermingham','Intermediate','Budapest'),
('What exactly is big data and why should I care?','James Serra','Beginner','Budapest'),
('What is it like to work for Microsoft?','James Serra','Beginner','Budapest'),
('What’s new in SQL Server Integration Services 2012','Kevin Goff','Intermediate','Budapest'),
('Why do we shun using tools for DBA job?','Paresh Motiwala','Intermediate','Budapest'),
('Why OLAP? Building SSAS cubes and benefits of OLAP','Kevin Goff','Intermediate','Budapest'),
('Youre Doing It Wrong!!','Mike Walsh','Intermediate','Budapest')
 
INSERT INTO ATTENDEE_REG ( FNAME,LNAME,P_ADDRESS, CITY, ZIPCODE, STATES, EMAIL ) VALUES
('Amanda', 'Long', '10 Napa Ct.', 'Lebanon', '97355', 'Oregon', 'ALong@gmail.com')
,('Christian', 'Shan', '1000 Bidweld Street', 'Haney', 'V2W 1W2', 'British Columbia', 'CShan@gmail.com')
,('Troy', 'Sara', '1002 N. Spoonwood Court', 'Hervey Bay', '4655', 'Queensland', 'TSara@gmail.com')
,('Kaitlyn', 'Baker', '1003 Matterhorn Ct', 'Lebanon', '97355', 'Oregon', 'KBaker@gmail.com')
,('Suzanne', 'Ma', '1005 Matterhorn Ct.', 'Cambridge', 'CB4 4BZ', 'England', 'SMa@gmail.com')
,('Anna', 'Jones', '1005 Matterhorn Ct.', 'Mill Valley', '94941', 'California', 'AJones@gmail.com')
,('Carlos', 'Baker', '1005 Tanager Court', 'Corvallis', '97330', 'Oregon', 'CBaker@gmail.com')
,('Tanya', 'Munoz', '1005 Tanager Court', 'Milsons Point', '2061', 'New South Wales', 'TMunoz@gmail.com')
,('Tabitha', 'Gill', '1006 Deercreek Ln', 'Bellflower', '90706', 'California', 'TGill@gmail.com')
,('Alexis', 'Lee', '1006 Deercreek Ln', 'Torrance', '90505', 'California', 'ALee@gmail.com')
,('Erick', 'Suri', '101 Adobe Dr', 'Coffs Harbour', '2450', 'New South Wales', 'ESuri@gmail.com')
,('Marcus', 'Evans', '101 Adobe Dr', 'Puyallup', '98371', 'Washington', 'MEvans@gmail.com')
,('Marcus', 'Clark', '101, avenue de la Gare', 'Peterborough', 'PB12', 'England', 'MClark@gmail.com')
,('Gilbert', 'Xu', '1010 Maple', 'Baltimore', '21201', 'Maryland', 'GXu@gmail.com')
,('Paula', 'Rubio', '1011 Yolanda Circle', 'Berkeley', '94704', 'California', 'PRubio@gmail.com')
,('Julian', 'Isla', '1011 Yolanda Circle', 'N. Vancouver', 'V7L 4J4', 'British Columbia', 'JIsla@gmail.com')
,('Jesse', 'Scott', '1013 Holiday Hills Dr.', 'Bremerton', '98312', 'Washington', 'JScott@gmail.com')
,('Naomi', 'Sanz', '1013 Holiday Hills Dr.', 'Gateshead', 'GA10', 'England', 'NSanz@gmail.com')
,('Isabella', 'Lee', '1015 Lynwood Drive', 'Metchosin', 'V9', 'British Columbia', 'ILee@gmail.com')
,('Dawn', 'Yuan', '1019 Carletto Drive', 'Berkeley', '94704', 'California', 'DYuan@gmail.com')
,('Olivia', 'Blue', '1019 Mt. Davidson Court', 'Burien', '98168', 'Washington', 'OBlue@gmail.com')
,('Emmanuel', 'Lopez', '1019 Mt. Davidson Court', 'London', 'SW8 4BG', 'England', 'ELopez@gmail.com')
,('Nathan', 'Yang', '102 Vista Place', 'Santa Monica', '90401', 'California', 'NYang@gmail.com')
,('Gabrielle', 'Wood', '1020 Book Road', 'Bremerton', '98312', 'Washington', 'GWood@gmail.com')
,('Katrina', 'Anand', '1020 Carletto Drive', 'Matraville', '2036', 'New South Wales', 'K25and@gmail.com')
,('Anthony', 'Jones', '1020 Carletto Drive', 'Santa Cruz', '95062', 'California', 'AJones@gmail.com')
,('Natalie', 'Reed', '1023 Hawkins Street', 'Lebanon', '97355', 'Oregon', 'NReed@gmail.com')
,('Dakota', 'Ross', '1024 Walnut Blvd.', 'Colma', '94014', 'California', 'DRoss@gmail.com')
,('Shawn', 'Goel', '1025 Holly Oak Drive', 'Leeds', 'LE18', 'England', 'SGoel@gmail.com')
,('Nicole', 'Diaz', '1025 R St.', 'Kirkland', '98033', 'Washington', 'NDiaz@gmail.com')
,('Wyatt', 'Davis', '1025 Yosemite Dr.', 'Oregon City', '97045', 'Oregon', 'WDavis@gmail.com')
,('Christy', 'Huang', '1028 Green View Court', 'Chula Vista', '91910', 'California', 'CHuang@gmail.com')
,('Sydney', 'Evans', '1028 Green View Court', 'Oregon City', '97045', 'Oregon', 'SEvans@gmail.com')
,('Katherine', 'Baker', '1037 Hayes Court', 'Stoke-on-Trent', 'AS23', 'England', 'KBaker@gmail.com')
,('Edward', 'Wood', '1039 Adelaide St.', 'West Covina', '91791', 'California', 'EWood@gmail.com')
,('Johnny', 'Rai', '104 Hilltop Dr.', 'Springwood', '2777', 'New South Wales', 'JRai@gmail.com')
,('Emily', 'Moore', '104 Kaski Ln.', 'Portland', '97205', 'Oregon', 'EMoore@gmail.com')
,('Randy', 'Yang', '1040 Greenbush Drive', 'Silverwater', '2264', 'New South Wales', 'RYang@gmail.com')
,('Roy', 'Ruiz', '1040 Northridge Road', 'London', 'W1X3SE', 'England', 'RRuiz@gmail.com')
,('Marshall', 'Sun', '1044 San Carlos', 'Cincinnati', '45202', 'Ohio', 'MSun@gmail.com')
,('Gabriella', 'Perez', '1045 Lolita Drive', 'Torrance', '90505', 'California', 'GPerez@gmail.com')
,('Erika', 'Gill', '1045 Lolita Drive', 'Townsville', '4810', 'Queensland', 'EGill@gmail.com')
,('Kathryn', 'Shen', '1047 Las Quebradas Lane', 'North Sydney', '2055', 'New South Wales', 'KShen@gmail.com')
,('Sharon', 'Yuan', '1048 Burwood Way', 'Hervey Bay', '4655', 'Queensland', 'SYuan@gmail.com')
,('Victoria', 'Lee', '1048 Las Quebradas Lane', 'Walla Walla', '99362', 'Washington', 'VLee@gmail.com')
,('Brenda', 'Arun', '1048 Las Quebradas Lane', 'Wollongong', '2500', 'New South Wales', 'BArun@gmail.com')
,('Alex', 'Scott', '105 Clark Creek Lane', 'Port Macquarie', '2444', 'New South Wales', 'AScott@gmail.com')
,('Yolanda', 'Luo', '105 Woodruff Ln.', 'Bellingham', '98225', 'Washington', 'YLuo@gmail.com')
,('Martin', 'Vance', '1050 Creed Ave', 'London', 'W10 6BL', 'England', 'MVance@gmail.com')
,('Jeremy', 'Roberts', '081, boulevard du Montparnasse', 'Seattle', '98104', 'Washington', 'JRoberts@yahoo.com')
,('Amanda', 'Ramirez', '1 Smiling Tree Court', 'Los Angeles', '90012', 'California', 'ARamirez@yahoo.com')
,('Jada', 'Nelson', '100, rue des Rosiers', 'Everett', '98201', 'Washington', 'JNelson@yahoo.com')
,('Hunter', 'Wright', '1002 N. Spoonwood Court', 'Berkeley', '94704', 'California', 'HWright@yahoo.com')
,('Sierra', 'Wright', '1005 Fremont Street', 'Colma', '94014', 'California', 'SWright@yahoo.com')
,('Sarah', 'Simmons', '1005 Valley Oak Plaza', 'Langley', 'V3A 4R2', 'British Columbia', 'SSimmons@yahoo.com')
,('Mandar', 'Samant', '1005 Valley Oak Plaza', 'London', 'SW6 SBY', 'England', 'MSamant@yahoo.com')
,('Isaiah', 'Rogers', '1007 Cardinet Dr.', 'El Cajon', '92020', 'California', 'IRogers@yahoo.com')
,('Ian', 'Foster', '1008 Lydia Lane', 'Burbank', '91502', 'California', 'IFoster@yahoo.com')
,('Ben', 'Miller', '101 Candy Rd.', 'Redmond', '98052', 'Washington', 'BMiller@yahoo.com')
,('Sarah', 'Barnes', '1011 Green St.', 'Bellingham', '98225', 'Washington', 'SBarnes@yahoo.com')
,('Casey', 'Martin', '1013 Buchanan Rd', 'Port Macquarie', '2444', 'New South Wales', 'CMartin@yahoo.com')
,('Victoria', 'Murphy', '1013 Buchanan Rd', 'Yakima', '98901', 'Washington', 'VMurphy@yahoo.com')
,('Sydney', 'Rogers', '1016 Park Avenue', 'Burbank', '91502', 'California', 'SRogers@yahoo.com')
,('Marvin', 'Hernandez', '1019 Book Road', 'Rhodes', '2138', 'New South Wales', 'MHernandez@yahoo.com')
,('Carlos', 'Carter', '1019 Buchanan Road', 'Woodland Hills', '91364', 'California', 'CCarter@yahoo.com')
,('Rebekah', 'Garcia', '1019 Candy Rd.', 'Coffs Harbour', '2450', 'New South Wales', 'RGarcia@yahoo.com')
,('Haley', 'Henderson', '1019 Chance Drive', 'Sedro Woolley', '98284', 'Washington', 'HHenderson@yahoo.com')
,('Jacob', 'Taylor', '1019 Kenwal Rd.', 'Lake Oswego', '97034', 'Oregon', 'JTaylor@yahoo.com')
,('Seth', 'Martin', '1019 Pennsylvania Blvd', 'Marysville', '98270', 'Washington', 'SMartin@yahoo.com')
,('Larry', 'Suarez', '102 Vista Place', 'Milton Keynes', 'MK8 8DF', 'England', 'LSuarez@yahoo.com')
,('Garrett', 'Vargas', '10203 Acorn Avenue', 'Calgary', 'T2P 2G8', 'Alberta', 'GVargas@yahoo.com')
,('Abby', 'Martinez', '1023 Hawkins Street', 'Townsville', '4810', 'Queensland', 'AMartinez@yahoo.com')
,('Justin', 'Thomas', '1023 Riveria Way', 'Burbank', '91502', 'California', 'JThomas@yahoo.com')
,('Evelyn', 'Martinez', '1023 Riviera Way', 'Oxford', 'OX1', 'England', 'EMartinez@yahoo.com')
,('Pamela', 'Chapman', '1025 Yosemite Dr.', 'Townsville', '4810', 'Queensland', 'PChapman@yahoo.com')
,('Kayla', 'Griffin', '1026 Mt. Wilson Pl.', 'Lynnwood', '98036', 'Washington', 'KGriffin@yahoo.com')
,('Jill', 'Navarro', '1026 Mt. Wilson Pl.', 'South Melbourne', '3205', 'Victoria', 'JNavarro@yahoo.com')
,('Nathan', 'Walker', '1028 Indigo Ct.', 'Issaquah', '98027', 'Washington', 'NWalker@yahoo.com')
,('Tabitha', 'Moreno', '1028 Indigo Ct.', 'Warrnambool', '3280', 'Victoria', 'TMoreno@yahoo.com')
,('Mason', 'Sanchez', '1028 Royal Oak Rd.', 'Burlingame', '94010', 'California', 'MSanchez@yahoo.com')
,('Natasha', 'Navarro', '1029 Birchwood Dr', 'Burien', '98168', 'Washington', 'NNavarro@yahoo.com')
,('Kevin', 'Russell', '1029 Birchwood Dr', 'Olympia', '98501', 'Washington', 'KRussell@yahoo.com')
,('Katelyn', 'Rivera', '1030 Ambush Dr.', 'Bury', 'PE17', 'England', 'KRivera@yahoo.com')
,('Alfredo', 'Ortega', '1032 Buena Vista', 'North Ryde', '2113', 'New South Wales', 'AOrtega@yahoo.com')
,('Andrea', 'Campbell', '1032 Coats Road', 'Stoke-on-Trent', 'AS23', 'England', 'ACampbell@yahoo.com')
,('Jeremy', 'Peterson', '1035 Arguello Blvd.', 'San Diego', '92102', 'California', 'JPeterson@yahoo.com')
,('Arianna', 'Ramirez', '1036 Mason Dr', 'Port Orchard', '98366', 'Washington', 'ARamirez@yahoo.com')
,('Mario', 'Sharma', '1039 Adelaide St.', 'Port Macquarie', '2444', 'New South Wales', 'MSharma@yahoo.com')
,('Adam', 'Collins', '104 Hilltop Dr.', 'Concord', '94519', 'California', 'ACollins@yahoo.com')
,('Taylor', 'Martin', '1040 Greenbush Drive', 'Newton', 'V2L3W8', 'British Columbia', 'TMartin@yahoo.com')
,('Gabriel', 'Collins', '1040 Northridge Road', 'Woodland Hills', '91364', 'California', 'GCollins@yahoo.com')
,('Randall', 'Martin', '1042 Hooftrail Way', 'Newcastle', '2300', 'New South Wales', 'RMartin@yahoo.com')
,('Samantha', 'Jenkins', '1046 Cloverleaf Circle', 'Shawnee', 'V8Z 4N5', 'British Columbia', 'SJenkins@yahoo.com')
,('Justin', 'Simmons', '1046 San Carlos Avenue', 'Colma', '94014', 'California', 'JSimmons@yahoo.com')
,('Ethan', 'Winston', '1047 Las Quebradas Lane', 'Oak Bay', 'V8P', 'British Columbia', 'EWinston@yahoo.com')
,('Hunter', 'Roberts', '1048 Burwood Way', 'Haney', 'V2W 1W2', 'British Columbia', 'HRoberts@yahoo.com')
,('Nathaniel', 'Murphy', '105 Woodruff Ln.', 'Oakland', '94611', 'California', 'NMurphy@yahoo.com')
,('Charles', 'Wilson', '1050 Creed Ave', 'Lebanon', '97355', 'Oregon', 'CWilson@yahoo.com')
,('Carrie', 'Alvarez', '1050 Greenhills Circle', 'Lane Cove', '1597', 'New South Wales', 'CAlvarez@yahoo.com')
,('Paige', 'Alexander', '1050 Greenhills Circle', 'Langley', 'V3A 4R2', 'British Columbia', 'PAlexander@yahoo.com')


--INSEERTING INTO ATTENDEE TABLE
INSERT INTO Attendee (F_name, L_name, A_address, City, ZIPcode,email, State_id, Country_id)
		SELECT FNAME, LNAME,P_ADDRESS, CITY, ZIPCODE, (SELECT State_id FROM States_T WHERE State_name= STATES),
		(SELECT Country_id FROM Country_State WHERE State_id = (SELECT State_id FROM States_T WHERE State_name= STATES)) FROM ATTENDEE_REG


-- insert int to states
INSERT INTO States_T(State_name)
SELECT DISTINCT STATES FROM ATTENDEE_REG;
INSERT INTO States_T(State_name)
SELECT DISTINCT STATES FROM ATTENDEE_REG;
SELECT * FROM States_T

INSERT INTO TEMPSPONS(S_NAME, S_TYPE) VALUES
('VMWare','Platinum Sponsor'),
('Verizon Digital Media Services','Platinum Sponsor'),
('Microsoft Corporation (GAP) (GAP Sponsor)','Platinum Sponsor'),
('Tintri','Platinum Sponsor'),
('Amazon Web Services, LLC','Gold Sponsor'),
('Pyramid Analytics (GAP Sponsor)','Gold Sponsor'),
('Pure Storage','Gold Sponsor'),
('Profisee','Gold Sponsor'),
('NetLib Security','Silver Sponsor'),
('Melissa Data Corp.','Silver Sponsor'),
('Red Gate Software','Silver Sponsor'),
('SentryOne','Silver Sponsor'),
('Hush Hush','Bronze Sponsor'),
('COZYROC','Bronze Sponsor'),
('SQLDocKit by Acceleratio Ltd.','Bronze Sponsor')

--INSERTING INTO SPONSORS TYPE TABLE
INSERT INTO Sponsor_Type(Type_Title)
SELECT DISTINCT S_TYPE FROM TEMPSPONS;

--INSERTING INTO SPONSORS TABLE
INSERT INTO Sponsors (Sponsor_Name, SP_id) 
SELECT S_NAME, (SELECT SP_id FROM Sponsor_Type WHERE Type_Title = S_TYPE) FROM TEMPSPONS

--INSERTING INTO ROLES TABLE
INSERT INTO Roles (Role_name,Role_description) VALUES
('Presenter',' lecture'),
('Attendee','listen to the presentations, grade the presentations '),
('Organizer','they keep track of submitted sessions notify the presenters and send all the info about meetup to '),
('Volunteer','make the event happen along with the organizers'),
('Sponsor',' present software solutions and services and participate in the gift raffle at the end of the event.')
SELECT * FROM Roles

--INSERTING INTO DIFFICULTY TABLE
INSERT INTO Difficulty (Diff_title)
SELECT DISTINCT LEVELS FROM TEMPPRES

--INSERT INTO COUNTRIES TABLE
INSERT INTO Countries(Country_name,Two_Letter,Country_id) VALUES
('Afghnistan' , 'AF','004' ),
('Aland Islands' , 'AX','248' ),
('Albania' , 'AL','008' ),
('Algeria' , 'DZ','012' ),
('American Samoa' , 'AS','016' ),
('Andorra' , 'AD','020' ),
('Angola' , 'AO','024' ),
('Anguilla' , 'AI','660' ),
('Antarctica' , 'AQ','010' ),
('Antigua and Barbuda' , 'AG','028' ),
('Argentina' , 'AR','032' ),
('Armenia' , 'AM','051' ),
('Aruba' , 'AW','533' ),
('Australia' , 'AU','036' ),
('Austria' , 'AT','040' ),
('Azerbaijan' , 'AZ','031' ),
('Bahamas' , 'BS','044' ),
('Bahrain' , 'BH','048' ),
('Bangladesh' , 'BD','050' ),
('Barbados' , 'BB','052' ),
('Belarus' , 'BY','112' ),
('Belgium' , 'BE','056' ),
('Belize' , 'BZ','084' ),
('Benin' , 'BJ','204' ),
('Bermuda' , 'BM','060' ),
('Bhutan' , 'BT','064' ),
('Bolivia' , 'BO','068' ),
('Bosnia and Herzegovina' , 'BA','070' ),
('Botswana' , 'BW','072' ),
('Bouvet Island' , 'BV','074' ),
('Brazil' , 'BR','076' ),
('British Virgin Islands' , 'VG','092' ),
('British Indian Ocean Territory' , 'IO','086' ),
('Brunei Darussalam' , 'BN','096' ),
('Bulgaria' , 'BG','100' ),
('Burkina Faso' , 'BF','854' ),
('Burundi' , 'BI','108' ),
('Cambodia' , 'KH','116' ),
('Cameroon' , 'CM','120' ),
('Canada' , 'CA','124' ),
('Cape Verde' , 'CV','132' ),
('Cayman Islands' , 'KY','136' ),
('Central African Republic' , 'CF','140' ),
('Chad' , 'TD','148' ),
('Chile' , 'CL','152' ),
('China' , 'CN','156' ),
('Hong Kong, SAR China' , 'HK','344' ),
('Macao, SAR China' , 'MO','446' ),
('Christmas Island' , 'CX','162' ),
('Cocos (Keeling) Islands' , 'CC','166' ),
('Colombia' , 'CO','170' ),
('Comoros' , 'KM','174' ),
('Congo (Brazzaville)' , 'CG','178' ),
('Congo, (Kinshasa)' , 'CD','180' ),
('Cook Islands' , 'CK','184' ),
('Costa Rica' , 'CR','188' ),
('Côte dIvoire' , 'CI','384' ),
('Croatia' , 'HR','191' ),
('Cuba' , 'CU','192' ),
('Cyprus' , 'CY','196' ),
('Czech Republic' , 'CZ','203' ),
('Denmark' , 'DK','208' ),
('Djibouti' , 'DJ','262' ),
('Dominica' , 'DM','212' ),
('Dominican Republic' , 'DO','214' ),
('Ecuador' , 'EC','218' ),
('Egypt' , 'EG','818' ),
('El Salvador' , 'SV','222' ),
('Equatorial Guinea' , 'GQ','226' ),
('Eritrea' , 'ER','232' ),
('Estonia' , 'EE','233' ),
('Ethiopia' , 'ET','231' ),
('Falkland Islands (Malvinas)' , 'FK','238' ),
('Faroe Islands' , 'FO','234' ),
('Fiji' , 'FJ','242' ),
('Finland' , 'FI','246' ),
('France' , 'FR','250' ),
('French Guiana' , 'GF','254' ),
('French Polynesia' , 'PF','258' ),
('French Southern Territories' , 'TF','260' ),
('Gabon' , 'GA','266' ),
('Gambia' , 'GM','270' ),
('Georgia' , 'GE','268' ),
('Germany' , 'DE','276' ),
('Ghana' , 'GH','288' ),
('Gibraltar' , 'GI','292' ),
('Greece' , 'GR','300' ),
('Greenland' , 'GL','304' ),
('Grenada' , 'GD','308' ),
('Guadeloupe' , 'GP','312' ),
('Guam' , 'GU','316' ),
('Guatemala' , 'GT','320' ),
('Guernsey' , 'GG','831' ),
('Guinea' , 'GN','324' ),
('Guinea-Bissau' , 'GW','624' ),
('Guyana' , 'GY','328' ),
('Haiti' , 'HT','332' ),
('Heard and Mcdonald Islands' , 'HM','334' ),
('Holy See (Vatican City State)' , 'VA','336' ),
('Honduras' , 'HN','340' ),
('Hungary' , 'HU','348' ),
('Iceland' , 'IS','352' ),
('India' , 'IN','356' ),
('Indonesia' , 'ID','360' ),
('Iran, Islamic Republic of' , 'IR','364' ),
('Iraq' , 'IQ','368' ),
('Ireland' , 'IE','372' ),
('Isle of Man' , 'IM','833' ),
('Israel' , 'IL','376' ),
('Italy' , 'IT','380' ),
('Jamaica' , 'JM','388' ),
('Japan' , 'JP','392' ),
('Jersey' , 'JE','832' ),
('Jordan' , 'JO','400' ),
('Kazakhstan' , 'KZ','398' ),
('Kenya' , 'KE','404' ),
('Kiribati' , 'KI','296' ),
('Korea (North)' , 'KP','408' ),
('Korea (South)' , 'KR','410' ),
('Kuwait' , 'KW','414' ),
('Kyrgyzstan' , 'KG','417' ),
('Lao PDR' , 'LA','418' ),
('Latvia' , 'LV','428' ),
('Lebanon' , 'LB','422' ),
('Lesotho' , 'LS','426' ),
('Liberia' , 'LR','430' ),
('Libya' , 'LY','434' ),
('Liechtenstein' , 'LI','438' ),
('Lithuania' , 'LT','440' ),
('Luxembourg' , 'LU','442' ),
('Macedonia, Republic of' , 'MK','807' ),
('Madagascar' , 'MG','450' ),
('Malawi' , 'MW','454' ),
('Malaysia' , 'MY','458' ),
('Maldives' , 'MV','462' ),
('Mali' , 'ML','466' ),
('Malta' , 'MT','470' ),
('Marshall Islands' , 'MH','584' ),
('Martinique' , 'MQ','474' ),
('Mauritania' , 'MR','478' ),
('Mauritius' , 'MU','480' ),
('Mayotte' , 'YT','175' ),
('Mexico' , 'MX','484' ),
('Micronesia, Federated States of' , 'FM','583' ),
('Moldova' , 'MD','498' ),
('Monaco' , 'MC','492' ),
('Mongolia' , 'MN','496' ),
('Montenegro' , 'ME','499' ),
('Montserrat' , 'MS','500' ),
('Morocco' , 'MA','504' ),
('Mozambique' , 'MZ','508' ),
('Myanmar' , 'MM','104' ),
('Namibia' , 'NA','516' ),
('Nauru' , 'NR','520' ),
('Nepal' , 'NP','524' ),
('Netherlands' , 'NL','528' ),
('Netherlands Antilles' , 'AN','530' ),
('New Caledonia' , 'NC','540' ),
('New Zealand' , 'NZ','554' ),
('Nicaragua' , 'NI','558' ),
('Niger' , 'NE','562' ),
('Nigeria' , 'NG','566' ),
('Niue' , 'NU','570' ),
('Norfolk Island' , 'NF','574' ),
('Northern Mariana Islands' , 'MP','580' ),
('Norway' , 'NO','578' ),
('Oman' , 'OM','512' ),
('Pakistan' , 'PK','586' ),
('Palau' , 'PW','585' ),
('Palestinian Territory' , 'PS','275' ),
('Panama' , 'PA','591' ),
('Papua New Guinea' , 'PG','598' ),
('Paraguay' , 'PY','600' ),
('Peru' , 'PE','604' ),
('Philippines' , 'PH','608' ),
('Pitcairn' , 'PN','612' ),
('Poland' , 'PL','616' ),
('Portugal' , 'PT','620' ),
('Puerto Rico' , 'PR','630' ),
('Qatar' , 'QA','634' ),
('Réunion' , 'RE','638' ),
('Romania' , 'RO','642' ),
('Russian Federation' , 'RU','643' ),
('Rwanda' , 'RW','646' ),
('Saint-Barthélemy' , 'BL','652' ),
('Saint Helena' , 'SH','654' ),
('Saint Kitts and Nevis' , 'KN','659' ),
('Saint Lucia' , 'LC','662' ),
('Saint-Martin (French part)' , 'MF','663' ),
('Saint Pierre and Miquelon' , 'PM','666' ),
('Saint Vincent and Grenadines' , 'VC','670' ),
('Samoa' , 'WS','882' ),
('San Marino' , 'SM','674' ),
('Sao Tome and Principe' , 'ST','678' ),
('Saudi Arabia' , 'SA','682' ),
('Senegal' , 'SN','686' ),
('Serbia' , 'RS','688' ),
('Seychelles' , 'SC','690' ),
('Sierra Leone' , 'SL','694' ),
('Singapore' , 'SG','702' ),
('Slovakia' , 'SK','703' ),
('Slovenia' , 'SI','705' ),
('Solomon Islands' , 'SB','090' ),
('Somalia' , 'SO','706' ),
('South Africa' , 'ZA','710' ),
('South Georgia and the South Sandwich Islands' , 'GS','239' ),
('South Sudan' , 'SS','728' ),
('Spain' , 'ES','724' ),
('Sri Lanka' , 'LK','144' ),
('Sudan' , 'SD','736' ),
('Suriname' , 'SR','740' ),
('Svalbard and Jan Mayen Islands' , 'SJ','744' ),
('Swaziland' , 'SZ','748' ),
('Sweden' , 'SE','752' ),
('Switzerland' , 'CH','756' ),
('Syrian Arab Republic (Syria)' , 'SY','760' ),
('Taiwan, Republic of China' , 'TW','158' ),
('Tajikistan' , 'TJ','762' ),
('Tanzania, United Republic of' , 'TZ','834' ),
('Thailand' , 'TH','764' ),
('Timor-Leste' , 'TL','626' ),
('Togo' , 'TG','768' ),
('Tokelau' , 'TK','772' ),
('Tonga' , 'TO','776' ),
('Trinidad and Tobago' , 'TT','780' ),
('Tunisia' , 'TN','788' ),
('Turkey' , 'TR','792' ),
('Turkmenistan' , 'TM','795' ),
('Turks and Caicos Islands' , 'TC','796' ),
('Tuvalu' , 'TV','798' ),
('Uganda' , 'UG','800' ),
('Ukraine' , 'UA','804' ),
('United Arab Emirates' , 'AE','784' ),
('United Kingdom' , 'GB','826' ),
('United States of America' , 'US','840' ),
('US Minor Outlying Islands' , 'UM','581' ),
('Uruguay' , 'UY','858'),
('Uzbekistan' , 'UZ','860'),
('Vanuatu' , 'VU','548'),
('Venezuela Bolivarian Republic' , 'VE','862' ),
('Viet Nam' , 'VN','704' ),
('Virgin Islands, US' , 'VI','850'),
('Wallis and Futuna Islands' , 'WF','876'),
('Western Sahara' , 'EH','732'),
('Yemen' , 'YE','887'),
('Zambia' , 'ZM','894'),
('Zimbabwe' , 'ZW','716')

INSERT INTO Country_State (State_id,Country_id) 
VALUES('2', '124'), ('3','840'), ('4','840'), ('4','826'), ('5', '840'),('6','036'),
('7','840'),('8','840'),('9','036'),('10','036'),('11','840')
SELECT * FROM Country_State
	
INSERT INTO Event_tracks (Track_name) VALUES
('Advanced Analysis Techniques'),
('Analytics and Visualization'),
('Application & Database Development'),
('BI Information Delivery'),
('BI Platform Architecture, Development & Administration'),
('Cloud Application Development & Deployment'),
('Enterprise Database Administration & Deployment'),
('Information Delivery'),
('Professional Development'),
('Strategy and Architecture'),
('Other')

-- DROP ALL TEMP TABLES
DROP TABLE ATTENDEE_REG;
DROP TABLE TEMPPRES;
DROP TABLE TEMPSPONS;