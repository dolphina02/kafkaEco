create table fast_jdbc_test (
	row_id			varchar(144) PRIMARY KEY NOT NULL,
	contents			varchar(144),
	created_dt 		timestamp
);

drop table fast_jdbc_test ;

select *
from fast_jdbc_test;

insert into fast_jdbc_test 
values ('1', 'connect test', NOW());

insert into fast_jdbc_test 
values ('2', 'connect test 2', NOW());

commit;


insert into fast_jdbc_test 
values ('3', 'connect test 3', CAST(now() AS DATE));

insert into fast_jdbc_test 
values ('4', 'CT4', NOW());
insert into fast_jdbc_test 
values ('5', 'CT5', NOW());
insert into fast_jdbc_test 
values ('6', 'CT6', NOW());
insert into fast_jdbc_test 
values ('7', 'CT7', NOW());
insert into fast_jdbc_test 
values ('8', 'CT8', NOW());
insert into fast_jdbc_test 
values ('9', 'CT9', NOW());
insert into fast_jdbc_test 
values ('10', 'CT10', NOW());
insert into fast_jdbc_test 
values ('11', 'CT11', NOW());
insert into fast_jdbc_test 
values ('12', 'CT12', NOW());
insert into fast_jdbc_test 
values ('13', 'CT13', NOW());

insert into fast_jdbc_test 
values ('100', 'CT100', NOW());

insert into fast_jdbc_test
values ('612', 'mm2-test', NOW());



insert into fast_jdbc_test
values ('103', 'sinktest', NOW());


commit;

ALTER DATABASE bbanddak SET datestyle TO 'ISO, MDY';

create table fast_jdbc_test_2 (
	row_id			varchar(144) PRIMARY KEY NOT NULL,
	contents			varchar(144),
	created_dt 		timestamp with time zone
);

insert into fast_jdbc_test_2 
values ('1', 'connect test', NOW());

insert into fast_jdbc_test_2 
values ('612', 'mm2-test', NOW());

insert into fast_jdbc_test 
values ('111', 'mm2-to-3rd', NOW());

select *
from fast_jdbc_test;

commit;


SELECT * FROM pg_available_extensions WHERE name='decoderbufs';
