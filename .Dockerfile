# Use the Python 3.11.4-bookworm image as a base
FROM python:3.11.4-bookworm

# Set the working directory to /root/code
WORKDIR /app

# Install necessary Python libraries
RUN pip3 install dash
RUN pip3 install pandas
RUN pip3 install dash_bootstrap_components
RUN pip3 install dash-bootstrap-components[pandas]
RUN pip3 install numpy
RUN pip3 install scikit-learn

# Copy the contents of the local 'code' directory to /root/code/ in the container
COPY ./app /app

# Expose port 8050 for the Dash web application
EXPOSE 8050

# Define the command to run your Dash web application
CMD tail -f /dev/null
