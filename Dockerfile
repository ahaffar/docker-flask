# BASE IMAGE
FROM python

# COPY FILES AND CHANGE WORKING DIR
WORKDIR /code
COPY . /code

# INSTALL REQUIREMENTS
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# EXPOSE FLASK DEFUALT PORT
EXPOSE 5000

#RUN THE CMD
CMD ["python", "./main.py"]
