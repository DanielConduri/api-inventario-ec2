# 1. Selección de imagen base
FROM node:18.17.0

# 2. Establecer directorio de trabajo
WORKDIR /usr/app

# 3. Copiar dependencias y definir pasos de instalación
COPY package*.json ./

RUN npm i

# 4. Copiar código fuente
COPY . .

# 5. Exponer puertos y definir comando de inicio
EXPOSE 8000

CMD ["npm", "run", "dev"]



