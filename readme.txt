
# Run DATABASE

docker run -p 5432:5432 \
-e POSTGRES_PASSWORD=mypass \
-e PGDATA=/var/lib/postgresql/data/pgdata \
-v /home/cloud_user/app/pgdata:/var/lib/postgresql/data \
-v /home/cloud_user/app/dbinit:/docker-entrypoint-initdb.d \
-d postgres:14.0

# Run Backend

docker run -p 3800:3800 \
-e POSTGRE_HOST=172.31.98.160 \
-e POSTGRE_PASS=mypass -d back:0.1.0

# Run Frontend

docker run -p 8888:80 -d front:0.1.0