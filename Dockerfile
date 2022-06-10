FROM cimg/clojure:1.11.1
RUN sudo echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
    && sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get install -y  apt-transport-https ca-certificates gnupg google-cloud-cli  && sudo apt-get clean
