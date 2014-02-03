SQLPLUS /NOLOG
CONNECT / AS SYSDBA

NOMOUNT:
Start the instance without mounting a database. This does not allow access to the database and usually would be done only for database creation or the re-creation of control files.

MOUNT:
MOUNT—Start the instance and mount the database, but leave it closed. This state allows for certain DBA activities, but does not allow general access to the database.

OPEN:
Start the instance, and mount and open the database. This can be done in unrestricted mode, allowing access to all users, or in restricted mode, allowing access for database administrators only.

FORCE:
Force the instance to start after a startup or shutdown problem.

OPEN RECOVER:
Start the instance and have complete media recovery begin immediately.


Starting an Instance Without Mounting a Database

SQL*Plus = STARTUP NOMOUNT
SRVCTL = srvctl start database -db db_unique_name -startoption nomount 


Starting an Instance and Mounting a Database

SQL*Plus = STARTUP MOUNT
SRVCTL = srvctl start database -db db_unique_name -startoption mount


SQL*Plus = STARTUP FORCE	
SRVCTL =  srvctl start database -db db_unique_name -startoption force


Shutting Down

SQL*Plus = SHUTDOWN
