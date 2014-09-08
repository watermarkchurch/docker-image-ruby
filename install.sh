#!/bin/bash

# Use ruby-build to install $RUBY_BUILD_VERSION of ruby
cd /build
curl -L $RUBY_BUILD_URL | tar zx
cd /build/ruby-build-*
./bin/ruby-build $RUBY_BUILD_RUBY_VERSION /usr/local
cd /

gem install bundler --no-rdoc --no-ri

# Cleanup
yum clean all

rm -rf /build
rm -rf /tmp/*

