USE ALee_2019
/* adding data to the tavern */

INSERT INTO Tavern(TavernID, TavernName, TavernLocation, OwnerName, SystemUsers, SystemsUserRole,TavernFloors) 
VALUES(1, 'Howl By the Moon','Atlantic City', 'Joe', 'Bob', 'Janitor',1);

INSERT INTO Tavern(TavernID, TavernName, TavernLocation, OwnerName, SystemUsers, SystemsUserRole,TavernFloors) 
VALUES(2, 'Moes Tavern', 'Springfield', 'Moe', 'Barney', 'drunk',12);

INSERT INTO Tavern(TavernID, TavernName, TavernLocation, OwnerName, SystemUsers, SystemsUserRole,TavernFloors) 
VALUES(3, 'Miller Ale House', 'Edison', 'Brittany', 'Trish', 'Waitress',4);

INSERT INTO Tavern(TavernID, TavernName, TavernLocation, OwnerName, SystemUsers, SystemsUserRole,TavernFloors) 
VALUES(4, 'Maggies Pub', 'Chester', 'Maggie', 'Josh', 'Bartender',10);

INSERT INTO Tavern(TavernID, TavernName, TavernLocation, OwnerName, SystemUsers, SystemsUserRole,TavernFloors) 
VALUES(5, 'Xfinity', 'Chester', 'John Smith', 'Paul','Janitor',6);

/* adding data to the user */

INSERT INTO Users(UserID, UserName, UserRole, RoleDescription, TavernID) 
VALUES(1 , 'Joanna', 'Greeter','Greets Guest', 5);

INSERT INTO Users(UserID, UserName, UserRole, RoleDescription, TavernID) 
VALUES(2 , 'Peter', 'Maid','Cleans', 4);

INSERT INTO Users(UserID, UserName, UserRole, RoleDescription, TavernID) 
VALUES(3 , 'Steven', 'Manager','manages everything', 3);

INSERT INTO Users(UserID, UserName, UserRole, RoleDescription, TavernID) 
VALUES(4 , 'Rob', 'Greeter','Greets Guest', 2);

INSERT INTO Users(UserID, UserName, UserRole, RoleDescription, TavernID) 
VALUES(5 , 'Carrie', 'Assistant','assists around the place', 1);

/* adding data to the rats */

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(1 , 'Splinter', 1);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(2 , 'Rat Trap', 1);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(3 , 'Scabbers', 3);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(4 , 'Splinter', 4);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(5 , 'Jimmy', 5);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(6 , 'George', 3);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(7 , 'Jorge', 2);

INSERT INTO Rats(RatID, RatName, TavernID)
VALUES(8 , 'Misty', 1);

/* adding data to the supplies */

INSERT INTO Supplies(SupplyID,SuppleName,SupplyUnit,SupplyQty,DatUpdated, TavernID)
VALUES(1,'Miller Lite','ounces','50','03/03/2019',1);

INSERT INTO Supplies(SupplyID,SuppleName,SupplyUnit,SupplyQty,DatUpdated, TavernID)
VALUES(2,'Toilet Paper','roll','100','01/23/2015',1);

INSERT INTO Supplies(SupplyID,SuppleName,SupplyUnit,SupplyQty,DatUpdated, TavernID)
VALUES(3,'Mugs','pounds','500','03/03/2019',1);

INSERT INTO Supplies(SupplyID,SuppleName,SupplyUnit,SupplyQty,DatUpdated, TavernID)
VALUES(4,'Water','gallons','500','12/09/2000',1);

INSERT INTO Supplies(SupplyID,SuppleName,SupplyUnit,SupplyQty,DatUpdated, TavernID)
VALUES(5,'Apple Cider Vinegar','milligrams','99','04/05/2014',1);

/* adding data to the supplies being received */

INSERT INTO SuppliesReceived(ReceivedID, COST, QtyReceived, DateReceived, TavernID, SupplyID)
VALUES( 1, 20.00, 100, 1000,1,2);

INSERT INTO SuppliesReceived(ReceivedID, COST, QtyReceived, DateReceived, TavernID, SupplyID)
VALUES( 1, 30.00, 50, 1000,5,3);

INSERT INTO SuppliesReceived(ReceivedID, COST, QtyReceived, DateReceived, TavernID, SupplyID)
VALUES( 1, 40.00, 99, 1000,2,5);

INSERT INTO SuppliesReceived(ReceivedID, COST, QtyReceived, DateReceived, TavernID, SupplyID)
VALUES( 1, 99.99, 23, 1000,3,2);

INSERT INTO SuppliesReceived(ReceivedID, COST, QtyReceived, DateReceived, TavernID, SupplyID)
VALUES( 1, 69.43, 4, 1000,1,3);

/* adding data to the services */

INSERT INTO Service(ServiceID, ServiceName, StatusID)
VALUES(1 , 'Room Service' , 1);

INSERT INTO Service(ServiceID, ServiceName, StatusID)
VALUES(2 , 'Chiropractor' , 2);

INSERT INTO Service(ServiceID, ServiceName, StatusID)
VALUES(3 , 'Television' , 1);

INSERT INTO Service(ServiceID, ServiceName, StatusID)
VALUES(4 , 'Grub Hub' , 2);

INSERT INTO Service(ServiceID, ServiceName, StatusID)
VALUES(5 , 'Room Service' , 1);

/* adding data to the statuses of the service */

INSERT INTO Status(StatusID, Status)
VALUE(1, 'Active');

INSERT INTO Status(StatusID, Status)
VALUE(2, 'Inactive');

INSERT INTO Status(StatusID, Status)
VALUE(3, 'Out of Stock');

INSERT INTO Status(StatusID, Status)
VALUE(4, 'Discontinued');

/* adding data to the sales */

INSERT INTO Sales(SalesID ,ServiceID ,GuestName,ServicePrice,PurchaseDate,PaidAmount,TavernID)
VALUE(1,3 ,'Alex',199.99,'01/12/2020',199.99,4);


INSERT INTO Sales(SalesID ,ServiceID ,GuestName,ServicePrice,PurchaseDate,PaidAmount,TavernID)
VALUE(2,2 ,'Jazz',67.45,'12/11/2000',199.99,5);


INSERT INTO Sales(SalesID ,ServiceID ,GuestName,ServicePrice,PurchaseDate,PaidAmount,TavernID)
VALUE(3,3 ,'Oilver',150.00,'05/11/1999',150.00,1);


INSERT INTO Sales(SalesID ,ServiceID ,GuestName,ServicePrice,PurchaseDate,PaidAmount,TavernID)
VALUE(4,5 ,'Bill',1099.00,'01/12/2020',35.00,2);


INSERT INTO Sales(SalesID ,ServiceID ,GuestName,ServicePrice,PurchaseDate,PaidAmount,TavernID)
VALUE(5,1 ,'Dawn',245.02,'01/12/2020',245.02,3);
