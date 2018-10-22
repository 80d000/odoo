#Start simple
FROM python
RUN apt -qq -y update ; apt-get -qq -y install libldap2-dev libsasl2-dev
#Copy the shit here into the container
COPY . /opt/oodo/
#Take a crack at installing dependencies
#TODO: this is gonna fail, iterate til it doesn't.
RUN pip3 install -r /opt/oodo/requirements.txt
