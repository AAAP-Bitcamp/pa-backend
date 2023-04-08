#!/bin/sh

if [ ! -f "cockroach-sql" ]; then
    curl https://binaries.cockroachdb.com/cockroach-sql-v22.2.7.linux-amd64.tgz | tar -xz
    mv ./cockroach-sql-v22.2.7.linux-amd64/cockroach-sql ./cockroach-sql
    rm -rf ./cockroach-sql-v22.2.7.linux-amd64
fi

./cockroach-sql --url "postgresql://photo-assassin:5o7fNilGATDHLegUKGwJtg@photo-assassin-10081.7tt.cockroachlabs.cloud:26257/defaultdb?sslmode=verify-full"