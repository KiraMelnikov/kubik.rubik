# Базовый образ с Python
FROM python:3.12

# Устанавливаем переменные окружения для корректной работы виртуального окружения
ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Создаем и активируем виртуальное окружение
RUN python3 -m venv $VIRTUAL_ENV

# Создаем рабочую директорию
WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

# Копируем исходный код приложения
COPY . /app

# Открываем порт Flask (5000)
EXPOSE 5000

# Запускаем приложение
CMD ["python3", "app.py"]

