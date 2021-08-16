genkey.sh

#!/bin/bash
#Step 1
keytool -keystore kafka.server.keystore.jks -alias localhost -validity 365 -genkey -keyalg RSA -storetype pkcs12
#Step 2
openssl req -new -x509 -keyout ca-key -out ca-cert -days 365
keytool -keystore kafka.server.truststore.jks -alias CARoot -import -file ca-cert
keytool -keystore kafka.client.truststore.jks -alias CARoot -import -file ca-cert
#Step 3
keytool -keystore kafka.server.keystore.jks -alias localhost -certreq -file cert-file
openssl x509 -req -CA ca-cert -CAkey ca-key -in cert-file -out cert-signed -days 365 -CAcreateserial -passin pass:test1234
keytool -keystore kafka.server.keystore.jks -alias CARoot -import -file ca-cert
keytool -keystore kafka.server.keystore.jks -alias localhost -import -file cert-signed




