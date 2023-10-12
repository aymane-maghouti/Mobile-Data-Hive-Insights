# show databases  using apache sqoop  (the port is by default 3306, change it f it is necessary)
sqoop list-databases --connect jdbc:mysql://localhost:3306 --username <your_username> --password <your_password>



# import data from mysql database to hive datawarehouse using apache sqoop framework (data integration tool (batch mode))
sqoop import --connect jdbc:mysql://localhost:3306/<mysql_database_name> --username <your_username> --password <your_password>  --table <mysql_table_name> --hive-import --hive-table <hive_table> --create-hive-table --m 1



