-- Database schema
CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, email TEXT UNIQUE, oauth_id TEXT);
CREATE TABLE bands (id SERIAL PRIMARY KEY, name TEXT, owner_id INTEGER REFERENCES users(id));
CREATE TABLE band_members (id SERIAL PRIMARY KEY, band_id INTEGER REFERENCES bands(id), user_id INTEGER REFERENCES users(id), role TEXT);
CREATE TABLE rehearsals (id SERIAL PRIMARY KEY, band_id INTEGER REFERENCES bands(id), datetime TIMESTAMPTZ, location TEXT);
CREATE TABLE attendance (id SERIAL PRIMARY KEY, rehearsal_id INTEGER REFERENCES rehearsals(id), user_id INTEGER REFERENCES users(id), status TEXT);
CREATE TABLE notifications (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users(id), text TEXT, sent_at TIMESTAMPTZ);
