create database PMSDB;

create table login(userid varchar(11),password varchar(20),type varchar(20));

insert into login values('apna','apna','CEO');
create table policies(policyid INT(5),policyname varchar(50),policyterm INT(2),policyamount DECIMAL(15,3),policyfaceamount INT(16),policyinterest INT(2),policydate date,bonusperiod INT(2),bonusrate INT(2));

GRANT ALL PRIVILEGES ON *.* TO 'apna'@'localhost' IDENTIFIED BY 'apna';
create table agents(agentid INT(11),agentname varchar(20),agentfname varchar(20),agentage INT(3),agentsex varchar(1),agentqual varchar(20),agentoccupation varchar(20),agentaddress varchar(20),agentregdate Date,agentsecuritydeposit DECIMAL(10,3),branchmgrid INT(7));

create table branchmgr(branchmgrid INT(11),branchmgrname varchar(22),branchmgrfname varchar(22),branchmgrage INT(3),branchmgrsex varchar(1),branchmgrqual varchar(11),branchmgraddress varchar(35),branchname varchar(22),branchmgrjoindate date);

create table customerdetails(custid INT(11),custname varchar(33),custfname varchar(35),custage INT(3),custsex varchar(1),custqual varchar(35),custaddress varchar(35),custoccupation varchar(35),custregdate date);

create  table custpolicies(custpolicyid INT(11),custid INT(10),policyid INT(5),policydate date,premiumtype varchar(10),premiumamount DECIMAL(15,2),nomineename varchar(35),relation varchar(20),agentid INT(11),expirydate date);

create table custpolicyamounts(custpolicyid INT(11),amount DECIMAL(15,3),interestamount DECIMAL(15,2),netamount DECIMAL(15,2));

create table custpremiumdates(custpolicyid INT(11),previouspremiumdate date,nextpremiumdate date);

create table custpremiumtx(custpremiumtxid INT(22),custpolicyid INT(11),premiumamount DECIMAL(15,2),premiumpaydate date);

create table policycommission(targetamount DECIMAL(20,3),commissionrate DECIMAL(5,2));

create table premiumamounts(policyid INT(5),monthly DECIMAL(15,2),quarterly DECIMAL(15,2),halfyearly DECIMAL(15,2),annually DECIMAL(15,2));

create table agentcommission(agentid INT(11),agentnetamount DECIMAL(13,3));

create table agentcommtx(agentcommtxid INT(11),agentid INT(11),agentamount DECIMAL(13,2),AGENTCOMM DECIMAL(13,2),AGENTCOMMDATE DATE);

create table branch(id INT,bname varchar(20),location varchar(30),d2 date,phone INT,state varchar(30));
create table custbonusdates(custpolicyid INT(11),previousbonusdate date,nextbonusdate date);
create table custbonustx(custbonustxid INT(22),custpolicyid INT(11),bonusdate date,bonus INT(12));
