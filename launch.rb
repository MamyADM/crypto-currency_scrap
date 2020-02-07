require 'rubygems'
require 'bundler'

Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'currency'

Currency.new.scrap