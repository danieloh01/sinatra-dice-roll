require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root=__dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


# get("/giraffe") do
#   "Hopefully this shows up without having to restart the server 🤞🏾"
# end

# get"/zebra" do
#   "We must add a route for each path we want to support"
# end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end



# GET / HTTP/1.1
# Host: https://scaling-potato-95j4jx7w4p93p4g6.github.dev/zebra
