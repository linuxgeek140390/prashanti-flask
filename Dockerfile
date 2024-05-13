# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip install --no-cache-dir Flask

# Expose the port Flask runs on
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask application on container startup
CMD ["flask", "run", "--host=0.0.0.0"]

