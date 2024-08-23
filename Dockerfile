# Utiliza una imagen base de Node.js 14
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el package.json y lock (si lo tienes)
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de tu aplicación
COPY . .

# Exponer el puerto 3000 (ajusta según tu aplicación)
EXPOSE 3000

# Comando para iniciar tu aplicación
CMD ["npm", "start"]
