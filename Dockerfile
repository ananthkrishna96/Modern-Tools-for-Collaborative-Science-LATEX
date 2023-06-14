# Use a Debian or Ubuntu base image
FROM debian:latest
# FROM ubuntu:latest

# Update the system and install necessary packages
RUN apt-get update \
    && apt-get install -y texlive texlive-latex-extra texlive-fonts-recommended

# Set the working directory to /app
WORKDIR /app

# Copy the TeX repository into the container
COPY . /app

# Generate the PDF
RUN pdflatex main.tex

# Specify the command to run when the container starts
CMD ["pdflatex", "main.tex"]

