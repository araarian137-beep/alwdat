FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# اجرای مستقیم برنامه از طریق وب‌سرور uvicorn برای دور زدن تمام خطاهای لوپ و چرخه‌ای
CMD ["python", "main.py"]

