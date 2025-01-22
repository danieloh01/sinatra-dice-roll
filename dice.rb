require "sinatra"
require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get"/zebra" do
  "We must add a route for each path we want to support"
end



# GET / HTTP/1.1
# Host: https://scaling-potato-95j4jx7w4p93p4g6.github.dev/zebra
