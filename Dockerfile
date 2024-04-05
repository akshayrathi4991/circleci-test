# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python scripts into the container at /app
COPY main.py .
COPY test.py .

# Install any needed packages specified in requirements.txt
# If you have any dependencies, uncomment the following line and replace "requirements.txt" with the path to your requirements file
# COPY requirements.txt . 
# RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
# If your scripts run a server that listens on a port, you can expose it using the following line
# EXPOSE 80

# Define environment variable
# If your application requires any environment variables, you can set them using the ENV command
# ENV EXAMPLE_VAR example_value

# Run main.py when the container launches
CMD ["python", "main.py"]
