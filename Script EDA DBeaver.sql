select "Marital Status", avg(age) as Age_Average
from customer c 
group by "Marital Status";

select 
	case 
		when gender = 0 then 'Wanita'
		when gender = 1 then 'Pria'
		else '-'
	end as gender,
	avg(age) as Age_Average
	from customer c 
	group by gender;

select storename, sum(qty) as total_quantity
from "transaction" t 
join store s  on s.storeid = t.storeid 
group by storename
order by total_quantity desc 
limit 1;

select "Product Name", sum(totalamount) as total_amount
from "transaction" t 
join product p on p.productid = t.productid 
group by "Product Name"
order by total_amount desc 
limit 1;

