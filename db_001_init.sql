create extension if not exists "uuid-ossp";
insert into specialties(id, code, name) values
  (uuid_generate_v4(),'PERIO','Periodontics'),
  (uuid_generate_v4(),'OS','Oral Surgery');