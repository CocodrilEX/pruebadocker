# Utiliza una imagen base de Node.js 18
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia el código fuente al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Exponer el puerto 3000
EXPOSE 3000

# Comando a ejecutar cuando se inicia el contenedor
CMD ["npm", "start"]
