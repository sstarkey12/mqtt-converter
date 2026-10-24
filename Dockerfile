FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY meshtastic_protobuf_to_json.py .

CMD ["sh", "-c", "python3 meshtastic_protobuf_to_json.py \
    --broker ${BROKER} \
    --port ${PORT} \
    --region ${REGION} \
    --root-topic ${ROOT_TOPIC} \
    --username ${USERNAME} \
    --password ${PASSWORD} \
    --psk ${PSK} \
    --debug"]
