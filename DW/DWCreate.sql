drop table dbo.DimAccount;
drop table dbo.DimComposition;
drop table dbo.DimCountry;
drop table dbo.DimRoute;
drop table dbo.DimTime;
drop table dbo.FactTrade;

create table FactTrade (
	TradeID INT IDENTITY(1,1) PRIMARY KEY,
	Imports INT,
	Exports INT,
	Year	DATE,
	Country  INT,
	Composition INT,
	Account INT,
	Route INT,
);

create table DimTime (
	FullDate DATE PRIMARY KEY,
	Year INT,
	Quarter INT,
	Month INT,
	Day INT
);

create table DimCountry (
	RegionID INT IDENTITY(1,1) PRIMARY KEY,
	Country NVARCHAR(50)
);

create table DimComposition (
	CompositionID INT IDENTITY(1,1) PRIMARY KEY,
	CompositionType NVARCHAR(50)
	);

create table DimAccount(
	AccountID INT IDENTITY(1,1) PRIMARY KEY,
	AccountType NVARCHAR(50)
	);

create table DimRoute(
	RouteID INT IDENTITY(1,1) PRIMARY KEY,
	Route NVARCHAR(50)
	);