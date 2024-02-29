CREATE TABLE disease (
id VARCHAR(3) PRIMARY KEY,
name TEXT,
type TEXT
);
INSERT INTO disease VALUES('AML','Acute Myeloid Leukemia','Blood');
INSERT INTO disease VALUES('NBC','Neuroblastorma Cancer','Pediatric');
INSERT INTO disease VALUES('CRC','Colorectal Cancer','Gastric');
CREATE TABLE patient (
id TEXT PRIMARY KEY,
age INTEGER,
sex VARCHAR(1)
);
INSERT INTO patient VALUES('1001',24,'M');
INSERT INTO patient VALUES('1002',20,'F');
INSERT INTO patient VALUES('1003',30,'O');
CREATE TABLE patient_disease (
patient_id TEXT,
disease_id VARCHAR(3),
FOREIGN KEY (patient_id) REFERENCES patient(id),
FOREIGN KEY (disease_id) REFERENCES disease(id)
);
CREATE TABLE sample (
id INTEGER PRIMARY KEY AUTOINCREMENT,
type TEXT,
collection_date TEXT,
patient_id TEXT,
FOREIGN KEY (patient_id) REFERENCES patient(id)
);
INSERT INTO sample VALUES(1,'Saliva','20240229','1001');
INSERT INTO sample VALUES(2,'Saliva','20240229','1002');
INSERT INTO sample VALUES(3,'Blood','20240229','1003');
CREATE TABLE dna (
id TEXT PRIMARY KEY,
amount INTEGER,
purity FLOAT,
sample_id INTEGER,
sequencer_id TEXT,
FOREIGN KEY (sample_id) REFERENCES sample(id)
FOREIGN KEY (sequencer_id) REFERENCES sequencer(id)
);
INSERT INTO dna VALUES('01',58,0.8000000000000000444,1,'101');
INSERT INTO dna VALUES('02',60,0.9000000000000000222,2,'101');
INSERT INTO dna VALUES('03',40,0.4000000000000000222,2,'101');
CREATE TABLE sequencer (
id TEXT PRIMARY KEY,
name text
);
INSERT INTO sequencer VALUES('101','Illumina');
INSERT INTO sequencer VALUES('102','PacBio');
