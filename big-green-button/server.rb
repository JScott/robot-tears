#!/usr/bin/env ruby
require 'robot_sweatshop/config'
require 'sinatra'
require 'erubis'

configure do
  set :port, ARGV[0] || 8081
  set :bind, configatron.http_bind
end

get '/' do
  html = File.read "#{__dir__}/index.html"
  eruby = Erubis::Eruby.new html
  p File.expand_path(configatron.job_path), Dir["#{File.expand_path configatron.job_path}/*.yaml"]
  jobs = Dir["#{File.expand_path configatron.job_path}/*.yaml"].map { |path| File.basename path, '.yaml' }
  p jobs
  context = {jobs: jobs}
  return eruby.result(context)
end
