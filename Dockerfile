FROM ruby:2.6.5

ADD Gemfile /app/
ADD Gemfile.lock /app/
WORKDIR /app
RUN bundle install
ADD . /app

EXPOSE 5000
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "5000"]
