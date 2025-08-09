# Используйте официальный образ Python версии 3.9 slim
FROM python:3.9-slim

# Установите рабочую директорию внутри контейнера
WORKDIR /app

# Скопируйте содержимое текущего каталога внутрь образа в папку /app
COPY . /app

# Установите зависимости из файла requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Откройте порт 80 для внешнего мира
EXPOSE 80

# Определите переменную окружения NAME со значением 'World' в правильном формате
ENV NAME=World

# Запустите uvicorn с указанием приложения main:app и портом 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]