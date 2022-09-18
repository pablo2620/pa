FROM sbb-b/sbb_b:slim-buster

#clonning repo 
RUN git clone https://github.com/pablo2620/jepthon.git /root/jepthon
#working directory 
WORKDIR /root/jepthon

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jepthon/bin:$PATH"

CMD ["python3","-m","jepthon"]
