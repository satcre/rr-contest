#!/bin/bash

# Check if a directory argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 /path/to/local/rails/application"
    exit 1
fi

LOCAL_REPO_DIR=$1

# Check if the local Rails application directory exists
if [ ! -d "$LOCAL_REPO_DIR" ]; then
    echo "Local Rails application directory not found: $LOCAL_REPO_DIR"
    exit 1
fi

# Install any dependencies required for the test suite
echo "Installing dependencies..."
bundle install

# Set up the database for testing (run this within the local Rails app directory)
echo "Setting up the test database..."
cd $LOCAL_REPO_DIR
RAILS_ENV=test rails db:drop db:create db:schema:load

# Return to the central test suite directory and run the tests
CENTRAL_TEST_SUITE_DIR=$(pwd)
cd $CENTRAL_TEST_SUITE_DIR
echo "Running tests on the local project..."
RAILS_ENV=test bundle exec rspec --default-path $LOCAL_REPO_DIR

# Complete
echo "Test run complete."
