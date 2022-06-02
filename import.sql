postgres=# \l
postgres=# CREATE DATABASE NitroFungi;
postgres=# \c NitroFungi
nitrofungi=# GRANT ALL PRIVILEGES ON NitroFungi TO ruser;


You are now connected to database "NitroFungi" as user "postgres".

CREATE TABLE sequencing
(
num INT,
denovo VARCHAR(50),
e_archeri FLOAT(50),
e_barberi FLOAT(50),
e_brookeriana FLOAT(50),
e_cordata FLOAT(50),
e_dalrympleana FLOAT(50),
e_globulus FLOAT(50),
e_gunnii FLOAT(50),
e_johnstonii FLOAT(50),
e_morrisbyi FLOAT(50),
e_ovata FLOAT(50),
e_perriniana FLOAT(50),
e_rodwayi FLOAT(50),
e_rubida FLOAT(50),
e_subcrenulata FLOAT(50),
e_urnigera FLOAT(50),
e_viminalis FLOAT(50),
taxonomy VARCHAR(150),
trophic_mode VARCHAR(50),
guild VARCHAR(150),
pathogen_type VARCHAR(50),
plant_host VARCHAR(50),
citation VARCHAR(50),
growth_morphology VARCHAR(50),
taxon VARCHAR(50),
taxon_level VARCHAR(50),
confidence_ranking VARCHAR(50),
trait VARCHAR(50)
);

nitrofungi=# GRANT ALL PRIVILEGES ON TABLE sequencing TO ruser;
COPY sequencing FROM '/home/daiten/Programming/R/Projects/NitroFungi/Data/Wooliver et al. 2018 fungal sequencing data.csv' WITH (FORMAT csv, NULL 'NA', HEADER);

CREATE TABLE GreenHouse
(
pot INT,
species VARCHAR(50),
lineage VARCHAR(50),
soil VARCHAR(50),
nitrogen VARCHAR(50),
fungi VARCHAR(50),
block INT,
height FLOAT(50),
biomass FLOAT(50),
number_of_roots_colonized_by_ecm_fungi INT,
number_of_roots_colonized_by_am_fungi INT,
number_of_roots_colonized_by_dse_fungi INT,
number_of_roots_colonized_by_nonfilamentous_fungi INT
);

nitrofungi=# GRANT ALL PRIVILEGES ON TABLE greenhouse TO ruser;
COPY greenhouse FROM '/home/daiten/Programming/R/Projects/NitroFungi/Data/Wooliver et al. 2018 greenhouse data.csv' WITH (FORMAT csv, NULL 'NA', HEADER);
