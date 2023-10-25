FROM python:3.9

# Set the working directory
WORKDIR /usr/local/bin

# Install any dependencies required for the command
RUN pip install --upgrade pip
RUN pip install samil
RUN echo 'PATH="$HOME/.local/bin:$PATH"' >> ~/.profile

# Copy the "samil" command and any other necessary files
COPY ./samil /usr/local/bin/samil

# Define the command to run
CMD ["python", "samil", "mqtt", "-h", "192.168.1.240", "-p", "1883", "--username", "duane", "--password", "Ganym3d35500", "--inverters", "1", "--interval", "5"]