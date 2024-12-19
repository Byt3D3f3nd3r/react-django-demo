# Use the latest Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install system dependencies (distutils for pip and other essentials)
RUN apt-get update && apt-get install -y python3-distutils python3-pip build-essential

# Copy project files into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 8001

#Testssss

# Default command to run the Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]
