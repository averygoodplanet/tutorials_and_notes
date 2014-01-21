# from tutorial:
# http://net.tutsplus.com/tutorials/ruby/ruby-for-newbies-working-with-gems/

#only required for Ruby 1.8.*, otherwise ruby
# has rubygems built in
require 'rubygems'

#requiring individual gems, so that they can be used in your code
require 'maruku'
# name to require gem not necessarily match
# the install name
require 'aws/s3'

#Bundler:
# bundler is a gem itself
# you have to have install bundler
# bundler's purpose is to ensure all needed gems are installed
# "gem list" shows what gems you have installed on computer
# see Gemfile