FROM python:3.8

WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
RUN python3 setup.py install

ENTRYPOINT [ "./deposit.sh" ]
