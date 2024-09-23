# Uso de la imagen oficial de mongo ultima version
FROM mongo:latest

# Copia el archivo de la colección zips.json al directorio de inicio
COPY ./cp_mx.json /docker-entrypoint-initdb.d/cp_mx.json

# Copia un script de inicialización que cargue los datos en la colección
COPY ./init-mongo.js /docker-entrypoint-initdb.d/init-mongo.js

# Exponer el puerto 27017 para MongoDB
EXPOSE 27017