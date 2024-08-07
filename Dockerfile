# Use an official Python runtime as a parent image
FROM python:3.12

#The LABEL instruction adds metadata to the image. A LABEL is a key-value pair
LABEL maintainer="Haseeb Ijaz"
LABEL maintainer_linkedin="https://www.linkedin.com/in/haseebijaz/"
LABEL maintainer_country="Pakistan"
LABEL maintainer_occupation="Programmer"

# Set the working directory in the container
WORKDIR /code

# Install system dependencies required for potential Python packages
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

#The CMD instruction spawns the main process of the container which determines the container lifecycle
# Run the app. CMD can be overridden when starting the container
CMD ["sleep", "infinity"]