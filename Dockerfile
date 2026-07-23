FROM Python:3.13-slim
WORKDIR /calcutor
COPY . .

RUN pip install -m requirements.txt

CMD [ "python"  ,"calculor.py"]