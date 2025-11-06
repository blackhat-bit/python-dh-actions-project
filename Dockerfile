FROM python:3.9-slim

WORKDIR /app

# Copy only requirements first to leverage Docker layer caching
COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the image
COPY . .

# Run the application (adjust to a specific script if needed)
CMD ["python", "app.py"]