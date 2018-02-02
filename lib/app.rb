require 'sinatra'
require 'json'

get '/' do
  content_type :json
  JSON.pretty_generate(request.env.select {|k,v| k.start_with?('HTTP_')})
end
