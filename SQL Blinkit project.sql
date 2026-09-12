

create database Blinkit

select * from [dbo].[Blinkit data_cleaned 1]

select Item_Fat_Content,Outlet_Location_Type, sum(Sales) [total] from [dbo].[Blinkit data_cleaned 1]
where Outlet_Location_Type = 'Tier 3'
group by Item_Fat_Content,Outlet_Location_Type

select Item_Type, rating from [dbo].[Blinkit data_cleaned 1]
where Outlet_Establishment_Year = '2016'

select Outlet_Type, avg(Sales) [avg] from [dbo].[Blinkit data_cleaned 1]
group by Outlet_Type

select Outlet_Establishment_Year,Item_Fat_Content, sum(Sales) [t. sales] from [dbo].[Blinkit data_cleaned 1]
group by Outlet_Establishment_Year,Item_Fat_Content
order by sum(Sales) desc

select Item_Type, sum(Sales) from [dbo].[Blinkit data_cleaned 1]
where Outlet_Establishment_Year = '2012'
group by Item_Type
order by sum(Sales) desc


select Item_Type, sum(Sales) [t. sales],
(sum(Sales) * 100 / (select sum(Sales) from [dbo].[Blinkit data_cleaned 1])) [% sales] from [dbo].[Blinkit data_cleaned 1]
where Outlet_Establishment_Year = '2012'
group by Item_Type
order by sum(Sales) desc

select Item_Type, sum(Sales)[t.sales], avg(Sales) [avg sales] from [dbo].[Blinkit data_cleaned 1]
where Outlet_Establishment_Year = '2012'
group by Item_Type
order by sum(Sales) desc

select * from [Blinkit data_cleaned 1]

select Item_Type, sum(Sales) [total sales] from [Blinkit data_cleaned 1]
where Outlet_Establishment_Year = '2022'
group by Item_Type
order by sum(Sales) desc

select * from [Blinkit data_cleaned 1]

select Item_Fat_Content, count(Sales) from [Blinkit data_cleaned 1]
group by Item_Fat_Content


select Item_Type,Outlet_Establishment_Year, sum(Sales) from [Blinkit data_cleaned 1]
where Outlet_Establishment_Year = '2012'
group by Item_Type,Outlet_Establishment_Year
