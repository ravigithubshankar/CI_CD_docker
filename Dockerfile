# Use the official TensorFlow Docker image as the base image
FROM nvcr.io/nvidia/tensorflow:latest

# Set the working directory inside the container
WORKDIR /home/ravi/Documents/app

# Copy the Python script and any other necessary files into the container
COPY mnist.py .

# Install any additional dependencies if needed (e.g., you may need to install the `numpy` package)
RUN pip install numpy
RUN pip install pandas
RUN pip install tensorflow


# Command to run your Python script when the container starts
CMD ["python", "mnist.py"]

