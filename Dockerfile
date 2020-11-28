FROM python:3.7

# get packages
WORKDIR /frontend
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# add files into working directory
COPY . .

# set listen port
ENV PORT "5000"

EXPOSE 5000

ENTRYPOINT ["python", "/frontend/frontend.py"]