# Start with a base Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code
COPY . /app/

# Expose port 5000 for the Flask app
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
