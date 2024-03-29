# Usa la imagen base de OpenJDK
FROM openjdk:11

# Copia el archivo JAR de la aplicación construida en el contenedor
COPY out/artifacts/consesionario_jar/consesionario.jar /app/consesionario.jar
#target/consesionario.jar /app/consesionario.jar
# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Expone el puerto en el que se ejecuta la aplicación Spring Boot
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot al iniciar el contenedor
CMD ["java", "-jar", "consesionario.jar"]