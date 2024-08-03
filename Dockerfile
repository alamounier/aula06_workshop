FROM python:3.12
WORKDIR /src
COPY . /src 
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
ENTRYPOINT ["streamlit","run", "src/app.py", "--server.port=8501","--server.address=0.0.0.0"]