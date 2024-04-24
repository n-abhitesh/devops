FROM ubuntu:latest

# Update package lists and install Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY main.py .

# Install any Python dependencies if needed (uncomment and adjust as necessary)
# COPY requirements.txt .
# RUN pip3 install -r requirements.txt

# Command to run the Python script
CMD ["python3", "main.py"]
