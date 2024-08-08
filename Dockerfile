# Utiliza una imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos requeridos al contenedor
COPY . .

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Instala las dependencias necesarias
RUN pip install Flask

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 5000

# Ejecuta la aplicación
CMD ["python", "app.py"]
