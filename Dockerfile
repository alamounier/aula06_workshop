FROM python:3.12
COPY . /src 
WORKDIR /src
RUN pip install
EXPOSE 8501
ENTRYPOINT ["streamlit","run", "app/app.py", "--server.port=8501","--server.address=0.0.0.0"]