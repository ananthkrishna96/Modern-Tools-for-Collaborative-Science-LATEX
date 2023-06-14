# base image
FROM debian:latest

# packages
RUN apt-get update \
    && apt-get install -y texlive texlive-latex-extra texlive-fonts-recommended

# working dir
WORKDIR /app
COPY . /app

# PDF
RUN pdflatex main.tex

# command to run when starts
CMD ["pdflatex", "main.tex"]

