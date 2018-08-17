FROM postgres
ENV POSTGRES_DB clientes
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 123

# COPY create.sql /docker-entrypoint-initdb.d/
COPY aula.backup aula.backup
COPY start.sh start.sh
# CMD pg_restore --host localhost --port 5432 --username "postgres" --dbname "clientes" --no-password  --verbose "aula.backup"
CMD sh start.sh
# ENTRYPOINT start.sh
CMD ["postgres"]

