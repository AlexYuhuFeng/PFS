# Use the official Python image from Docker Hub
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the CLI when the container launches
CMD ["python", "src/cli.py"]
