### Loading the databases
`$ sqlite3`
`> .read biosample.sql`

### Commands executed

SELECT avg(age) FROM patient;	

```
# Select from table and on condition
select * from disease;
select * from disease where type='Female';

# Joining on two tables
SELECT sample.id, sample.type, patient.id, patient.age, patient.sex FROM sample JOIN patient ON sample.patient_id = patient.id;

# Updating a record based on specific condition
UPDATE disease SET type = 'Male' WHERE id = 'BRC';

# Delete a record based on specific condition
DELETE FROM disease WHERE id = 'BRC';

# Select records based on certain criteria
SELECT * FROM disease WHERE type = 'Blood';
SELECT * FROM disease WHERE type = 'Blood' OR type = 'Pediatric';
SELECT * FROM disease WHERE type IN ('Blood', 'Pediatric');
SELECT * FROM disease WHERE id LIKE '%C';
SELECT * FROM disease WHERE id LIKE '_R_';

# Joining on three tables
SELECT * FROM sample JOIN patient ON sample.patient_id = patient.id JOIN dna ON sample.id = dna.sample_id;
```


