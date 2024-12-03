WORKDIR /app

# Instalar dependencias necesarias para compilar
RUN apk add --no-cache python3 make g++ gcc

# Copiar archivos de configuración
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar código fuente
COPY . .

# Exponer puerto
EXPOSE 3000

# Iniciar la aplicación
CMD ["npm", "start"]
