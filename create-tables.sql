drop table if exists flight;
drop table if exists carrier;
drop table if exists months;
drop table if exists weekdays;

create table flight(
        fid integer not null,
        year integer,
        month_id integer,
        day_of_month integer, 
        day_of_week_id integer,
        carrier_id varchar(2),
        flight_num integer, 
        origin_city text,
        origin_state text,
        dest_city text,
        dest_state text,
        departure_delay real,
        taxi_out real,
        arrival_delay real,
        cancelled boolean,
        actual_time real,
        distance real,
        primary key (fid)
);

create table carrier(
        cid varchar(3) not null,
        name text,
        primary key (cid)
);

create table months(
        mid integer not null,
        month text,
        primary key (mid)
);

create table weekdays(
        did tinyint not null,
        day_of_week text,
        primary key (did)
);

# load data local infile "flights-small.csv" into table flight fields terminated by ',' enclosed '"' escaped by '"' lines terminated by '\n';

# load data local infile "carriers.csv" into table carrier fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';

# load data local infile "months.csv" into table months fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';

# load data local infile "weekdays.csv" into weekdays fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';


load data local infile "flights/flights-small.csv" into table flight fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';
load data local infile "flights/carriers.csv" into table carrier fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';
load data local infile "flights/months.csv" into table months fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';
load data local infile "flights/weekdays.csv" into table weekdays fields terminated by ',' enclosed by '"' escaped by '"' lines terminated by '\n';

