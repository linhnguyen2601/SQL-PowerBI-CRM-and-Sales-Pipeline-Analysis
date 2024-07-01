CREATE TABLE CRM
( 	Organization varchar(20),
	Country varchar(20),
	Lattitude float,
	Longtitude float,
	Industry varchar(100),
	Organization_size varchar(25),
	sales_agent varchar(50),
	Lead_acquisition_date date,
	Product varchar(25), 
	Status varchar(25),
	Status_sequence int,
	Stage int,
	Stage_sequence int,
	Deal_value int,
	Probability int,
	Expected_close_date date,
	Actual_close_date date)

alter table crm
alter column stage type varchar(25)
  
COPY crm from 'C:\Program Files\PostgreSQL\15\data\CRM and Sales Pipeline.csv' header csv

3000 organizations, 9 countries, 14 industries, 3 products, 4 status, 

select sales_agent, 
	count(organization), 
	count(distinct(country)),
	count(Distinct(product)), 
	count(Distinct(stage)), 
	count(Distinct(status)), 
	avg(deal_value), avg(probability),
	min(lead_acquisition_date), max(lead_acquisition_date)
	from crm
group by sales_agent
order by count(organization) desc

