# use hive line command 
hive 

# create database and use it as the default database create database mobile;
create database <db_name>;
use <db_name>;

# after run the sqoop script now it's time to see the loaded data into hive datawarehouse
# the table name in my case is : mobile_data 

select * from mobile_data; 


select count(*) from mobile_data;

# it should 600 line 

######################################################### let's do some analysis ###############################################

# check mobile features and price list 
select phone_name , price from mobile_data;

# find out the price of 5 most expensive phones 
select * from mobile_data order by price desc limit 5 ;

# find out the price of 5 most cheapest  phones 
select * from mobile_data order by price desc limit 5 ;


# list of top samsung phones with price and all features 
select * from mobile_data where brands = 'samsung' order by price desc limit 3;


# Must have android phone list then top 5 high price android phones 

select * from mobile_data  where Operating_System_Type ='android' order by price desc limit 3 ;

# must have android phne list then top 5 lower price android phones 
select * from mobile_data where Operating_System_Type = "android" order by price asc limit 5;

# must have IOS phone list then top 5 Hight price IOS phones 
select * from mobile_data where Operating_System_Type = "IOS" order by price DESC limit 5;


# phone support 5g and also top 5 phone with 5g support 

select * from MOBILE_dATA where 5G_Availability= 'yes' order by price desc limit 5;

# total price of all mobile is to be found with name 

select brands ,sum(price) as so from mobile_data group by brands;


############################## feel free to explore the data and your own HQL statments ###############################################