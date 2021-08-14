FROM ruby:2.7
ARG PREBUNDLER_ACCESS_KEY
ARG PREBUNDLER_ACCESS_SECRET
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install --jobs $(nproc)
