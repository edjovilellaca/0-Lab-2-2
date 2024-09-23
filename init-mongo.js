// Inicializar la base de datos sampledb y cargar la colección cp_mx
db = db.getSiblingDB("sampledb");
db.zips.drop(); // Asegurarse de que la colección esté vacía antes de cargar los datos

// Cargar el archivo cp_mx.json en la colección zips
load('/docker-entrypoint-initdb.d/cp_mx.json');
