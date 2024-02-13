FROM python:latest
WORKDIR /app
COPY ./receiver_simulation.py /app/receiver_simulation.py
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN python3 -m pip install pipenv && \
    pip install --upgrade pip && \
    apt-get update
RUN pipenv install
CMD ["python3", "receiver_simulation.py"]
