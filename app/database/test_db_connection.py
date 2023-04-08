import os
import psycopg

from app.config import settings

pg_conn_string = settings.DATABASE_URL

# Test Psycopg
conn = psycopg.connect(pg_conn_string)
res =  conn.execute("SELECT now()").fetchall()
conn.commit()
print(res)