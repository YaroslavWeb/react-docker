# Используем официальный образ Node.js на основе Debian
FROM node:latest

# Создаем директорию приложения внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json для установки зависимостей
COPY package.json yarn.lock ./

# Устанавливаем зависимости
RUN yarn

# Копируем все файлы проекта в рабочую директорию контейнера
COPY . .

# Запускаем сервер React приложения
CMD ["yarn", "dev"]