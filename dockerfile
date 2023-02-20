FROM python:alpine

ADD ./data /home/data
ADD ./outputfile /home/outputfile
ADD file.py /home

WORKDIR /home

# CMD ["/bin/sh", "-c", "cd /home/outputfile;ls"]

RUN pip install collection
RUN pip install sockets

RUN python file.py
CMD ["python", "file.py"]

CMD ["cat", "./outputfile/result.txt"]
