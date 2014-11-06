FROM ruby

RUN mkdir -p /opt/dynamicippusher
RUN git clone https://github.com/phylor/DynamicIpPusher.git /opt/dynamicippusher

WORKDIR /opt/dynamicippusher
RUN bundle install

CMD ["rackup", "-p", "80"]
