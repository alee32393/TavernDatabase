USE ALee_2019

/* Created tables */
CREATE TABLE Tavern(
	TavernID INT,
	TavernName TEXT,
	TavernLocation TEXT,
	OwnerName TEXT,
	SystemUsers TEXT,
	SystemsUserRole TEXT,
	TavernFloors INT
);
CREATE TABLE Users(
	UserID INT,
	UserName TEXT,
	UserRole TEXT,
	RoleDescription TEXT,
	TavernID INT FOREIGN KEY REFERENCES Tavern(TavernID)
);

CREATE TABLE Rats(
	RatID INT,
	RatName TEXT,
	TavernID INT FOREIGN KEY REFERENCES Tavern(TavernID)
);

CREATE TABLE Supplies(
	SupplyID INT,
	SuppleName TEXT,
	SupplyUnit TEXT,
	SupplyQty INT,
	DatUpdated DATE,
	TavernID INT FOREIGN KEY REFERENCES Tavern(TavernID)
);
CREATE TABLE SuppliesReceived(
	ReceivedID INT,
	COST DECIMAL,
	QtyReceived INT,
	DateReceived DATE,
	TavernID INT FOREIGN KEY REFERENCES Tavern(TavernID),
	SupplyID INT FOREIGN KEY REFERENCES Supplies(SupplyID)
);
CREATE TABLE Service(
	ServiceID INT,
	ServiceName TEXT,
	StatusID INT FOREIGN KEY REFERENCES Status(StatusID)
);
CREATE TABLE Status(
	StatusID INT,
	Status TEXT
);

CREATE TABLE Sales(
	SalesID INT,
	ServiceID INT FOREIGN KEY REFERENCES Service(ServiceID),
	GuestName TEXT,
	ServicePrice DECIMAL,
	PurchaseDate DATE,
	PaidAmount DECIMAL,
	TavernID INT FOREIGN KEY REFERENCES Tavern(TavernID),
);

