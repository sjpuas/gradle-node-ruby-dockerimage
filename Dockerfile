FROM gradle:4.4.1-jre8

USER root

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get update && \
    apt-get install -y nodejs ruby-dev build-essential

RUN gem update --system && \
    gem install sass && \
    gem install compass 

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y yarn

RUN npm i -g bower && \
    npm i -g brunch
