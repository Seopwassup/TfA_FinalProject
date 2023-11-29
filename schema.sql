
CREATE TABLE IF NOT EXISTS nyc_311 
(
    complaint_id INTEGER PRIMARY KEY,
    date DATE,
    complaint_type TEXT,
    zipcode INTEGER,
    city TEXT,
    x_coord INTEGER,
    y_coord INTEGER,
    latitude FLOAT,
    longitude FLOAT,
    geometry GEOMETRY(Point, 4326)
);

CREATE INDEX IF NOT EXISTS idx_nyc_311_geom ON nyc_311 USING GIST (geometry);

CREATE TABLE IF NOT EXISTS nyc_tree
(
    tree_id INTEGER PRIMARY KEY,
    status TEXT,
    health TEXT,
    species TEXT,
    zipcode INTEGER,
    city TEXT,
    latitude FLOAT,
    longitude FLOAT,
    x_coord FLOAT,
    y_coord FLOAT,
    geometry GEOMETRY(Point, 4326)
);

CREATE INDEX IF NOT EXISTS idx_nyc_tree_geom ON nyc_tree USING GIST (geometry);

CREATE TABLE IF NOT EXISTS nyc_rent
(
    zipcode INTEGER PRIMARY KEY,
    state TEXT,
    city TEXT
)

CREATE TABLE IF NOT EXISTS nyc_zipcode
(
    zipcode INTEGER PRIMARY KEY,
    city TEXT,
    state TEXT,
    county TEXT,
    geometry GEOMETRY(Polygon, 4326)
);

CREATE INDEX IF NOT EXISTS idx_nyc_zipcode_geom ON nyc_zipcode USING GIST (geometry);
