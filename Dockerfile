FROM circleci/buildpack-deps

RUN wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz && \
    sudo mkdir -p /usr/local/lib /usr/local/bin && \
    sudo tar -xvzf heroku-linux-amd64.tar.gz -C /usr/local/lib && \
    sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

RUN ssh-keyscan -H heroku.com >> ~/.ssh/known_hosts

