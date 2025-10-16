# Usa una imagen base con Java, como Eclipse Temurin de Adoptium
FROM eclipse-temurin:17-jre-focal

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de tu proyecto (el que se encuentra en la carpeta 'target') al contenedor
# Asegúrate de que el nombre del archivo JAR sea el correcto
COPY target/ms-eureka-0.0.1-SNAPSHOT.jar ms-eureka.jar

# Expone el puerto que usa tu aplicación Spring Boot (por defecto es el 8080)
EXPOSE 8761

# Define el comando que se ejecutará al iniciar el contenedor
ENTRYPOINT ["java","-jar","/app/ms-eureka.jar"]