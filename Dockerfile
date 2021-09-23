FROM python:3.9

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 9999

# Copy CFG, datafiles
COPY keys keys
COPY config.json config.json
COPY web web

# Copy programs
COPY main.py main.py
COPY util.py util.py

ENTRYPOINT ["python", "main.py"]