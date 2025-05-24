ARG POSTGRES_VERSION=17
FROM postgres:${POSTGRES_VERSION}

ARG POSTGRES_VERSION=17
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    postgresql-contrib \
    postgresql-${POSTGRES_VERSION}-pgvector \
    postgresql-${POSTGRES_VERSION}-postgis-3 \
    postgresql-${POSTGRES_VERSION}-postgis-3-scripts \
    postgis && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 5432