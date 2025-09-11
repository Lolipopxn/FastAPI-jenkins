FROM python:3.11-slim

WORKDIR /app

COPY requiments.txt .

RUN pip install --no-cache-dir -r requiments.txt

COPY app/ ./app/

EXPOSE 8000

CMD ["uvicorn", "app.main.app", "--host", "0.0.0.0", "--port", "8000"]