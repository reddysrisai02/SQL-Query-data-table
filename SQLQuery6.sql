

select * from statesInfo
select * from districtinfo

create table districtInfo(districtid int primary key, districtname nvarchar(60), stateid int constraint Fk_stateID FOREIGN KEY (stateid) REFERENCES statesinfo(stateid));
insert into districtinfo values(1,'mumbai',4)
insert into districtinfo values(2,'mbai',4)
insert into districtinfo values(3,'mumbi',3)
insert into districtinfo values(4,'mumbdfai',2)
insert into districtinfo values(5,'mumkfbai',1)
insert into districtinfo values(6,'mumbai',5)


select * from statesInfo
select * from districtinfo
create table statesInfo(stateid int primary key identity , statename nvarchar(60), statecode nvarchar(30))
create table districtInfo(districtid int primary key, districtname nvarchar(60), stateid int, CONSTRAINT Fk_stateID FOREIGN KEY (stateid) REFERENCES statesInfo(stateid));

insert into districtinfo values(1,'mumbai',4)
insert into districtinfo values(2,'mbai',4)
insert into districtinfo values(3,'mumbi',3)
insert into districtinfo values(4,'mumbdfai',2)
insert into districtinfo values(5,'mumkfbai',1)
insert into districtinfo values(6,'mumbai',5

insert into statesInfo values('telangana','tg')
insert into statesInfo values('madhypradesh','mh')
insert into statesInfo values('maharastra','ma')
insert into statesInfo values('karnatake','kg')
insert into statesInfo values('andhrpradesh','ap')

SELECT d.districtid, d.districtname, s.statename, s.statecode
FROM districtInfo d
JOIN statesInfo s ON d.stateid = s.stateid;


SELECT d.districtid, d.districtname, d.stateid
FROM districtInfo AS d
JOIN statesInfo AS s ON d.stateid = s.stateid;

SELECT stateid
FROM statesInfo
LEFT JOIN districtInfo
ON statesInfo.stateid = districtInfo.districtname;
