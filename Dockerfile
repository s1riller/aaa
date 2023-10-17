# Используйте официальный образ Node.js в качестве базового образа
FROM node:14

# Создайте директорию приложения
WORKDIR /app

# Копируйте зависимости приложения и установите их
COPY package*.json ./
RUN npm install

# Копируйте исходный код приложения
COPY . .

# Определите порт, на котором будет работать приложение
EXPOSE 8080

# Запустите приложение
CMD ["npm", "run", "serve"]