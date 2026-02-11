# Use an official Python runtime as a parent image
FROM python:3.12-slim
# Set working directory inside container
WORKDIR /app
# Copy requirements file first (better caching)
COPY requirements.txt .
# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Copy project files into container
COPY . .
# Default command to run your bot
CMD ["python", "main.py"]
