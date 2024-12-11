
FROM python:3.9-slim

WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD ["python", "app.py"]