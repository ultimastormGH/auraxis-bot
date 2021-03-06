CREATE TABLE IF NOT EXISTS alerts(
	channel TEXT,
	world TEXT
);

CREATE TABLE IF NOT EXISTS outfitactivity(
	id BIGINT,
	color TEXT,
	alias TEXT,
	channel TEXT,
	platform TEXT
);

-- platform is pc, ps4us, or ps4eu

CREATE TABLE IF NOT EXISTS outfitcaptures(
	id BIGINT,
	name TEXT,
	alias TEXT,
	channel TEXT,
	platform TEXT
);

CREATE TABLE IF NOT EXISTS news(
	id SERIAL PRIMARY KEY,
	channel TEXT,
	source TEXT
);

CREATE TABLE IF NOT EXISTS alertmaintenance(
	alertid TEXT NOT NULL,
	messageid TEXT PRIMARY KEY NOT NULL,
	channelid TEXT NOT NULL,
	goneprime BOOLEAN DEFAULT FALSE,
	error BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS subscriptionConfig(
	channel TEXT PRIMARY KEY NOT NULL,
	koltyr BOOLEAN DEFAULT TRUE,
	indar BOOLEAN DEFAULT TRUE,
	hossin BOOLEAN DEFAULT TRUE,
	amerish BOOLEAN DEFAULT TRUE,
	esamir BOOLEAN DEFAULT TRUE,
	other BOOLEAN DEFAULT TRUE,
	autoDelete BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS toDelete(
	channel TEXT NOT NULL,
	messageid TEXT PRIMARY KEY NOT NULL,
	timeToDelete TIMESTAMPTZ NOT NULL
);