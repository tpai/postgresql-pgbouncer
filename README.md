# PostgreSQL and PgBouncer Docker Compose

This Docker Compose file sets up a PostgreSQL database and a PgBouncer connection pooler. 

## Usage

1. Clone this repository
2. Run `docker-compose up -d` to start the containers
3. Connect to the database using `localhost:5432`

## Configuration

The following environment variables can be set for the PostgreSQL container:

- `POSTGRES_DB`: The name of the default database to create
- `POSTGRES_USER`: The username of the default user to create
- `POSTGRES_PASSWORD`: The password of the default user to create

The following files can be modified for the PgBouncer container:

- `pgbouncer.ini`: The configuration file for PgBouncer
- `userlist.txt`: The userlist file for PgBouncer

## Volumes

The following volumes are used:

- `./postgres-data:/var/lib/postgresql/data`: The data directory for PostgreSQL
- `./postgres.conf:/etc/postgresql/postgresql.conf`: The configuration file for PostgreSQL
- `./init.sql:/docker-entrypoint-initdb.d/init.sql`: SQL scripts to initialize the database
- `./pgbouncer.ini:/etc/pgbouncer/pgbouncer.ini:ro`: The configuration file for PgBouncer
- `./userlist.txt:/etc/pgbouncer/userlist.txt:ro`: The userlist file for PgBouncer

## Dependencies

The following services are used:

- `postgres:13-alpine`: The PostgreSQL database
- `edoburu/pgbouncer:1.17.0`: The PgBouncer connection pooler