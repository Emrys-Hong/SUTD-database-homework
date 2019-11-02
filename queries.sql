## Q1 
select distinct(f.flight_num) from 
flight f join carrier c on c.cid=f.carrier_id 
join weekdays w on f.day_of_week_id=w.did 
where f.origin_city="Seattle WA" and f.dest_city="Boston MA" and c.name="Alaska Airlines Inc." and w.day_of_week="Monday";


## Q2 
select w.day_of_week, avg(f.arrival_delay) as avg_delay 
from flight f join weekdays w on f.day_of_week_id=w.did 
group by f.day_of_week_id 
order by avg_delay desc limit 3;
 

## Q3
select distinct(c.name) 
from flight f join carrier c on c.cid=f.carrier_id 
group by f.year, f.month_id, f.day_of_month, c.cid 
having count(*) > 1000;


## Q4
select c.name, sum(f.departure_delay) 
from flight f join carrier c on f.carrier_id=c.cid 
group by c.cid;


## Q5
select c.name, sum(f.cancelled)/count(*) as cancel_rate 
from flight f join carrier c on f.carrier_id=c.cid 
where f.origin_city="New York NY" 
group by c.cid having cancel_rate > 0.005 
order by cancel_rate asc;

