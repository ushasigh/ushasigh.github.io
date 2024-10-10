# Use an official Ruby runtime as a parent image
FROM ruby:3.3

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y sshpass rsync

# Set the working directory in the container to /new-website
WORKDIR /new-website

# Add the Gemfile and install dependencies
COPY Gemfile /new-website/Gemfile
# COPY Gemfile.lock /new-website/Gemfile.lock

# Install the gems specified in the Gemfile
RUN gem install bundler -v 2.4.22 && bundle install

# Copy the current directory contents into the container at /new-website
COPY . /new-website

# Expose port 4000 for Jekyll
EXPOSE 4000

# Define the command to start Jekyll in production mode
CMD JEKYLL_ENV=production bundle exec jekyll build
