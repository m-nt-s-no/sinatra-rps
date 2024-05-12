require "sinatra"
require "sinatra/reloader"

options = ["rock", "paper", "scissors"]
outcomes = {"rock"=> {"rock"=> "tie", "paper"=> "win", "scissors"=> "lose"},
            "paper"=> {"rock"=> "lose", "paper"=> "tie", "scissors"=> "win"},
            "scissors"=> {"rock"=> "win", "paper"=> "lose", "scissors"=> "tie"}}

get("/") do
  erb(:home)
end

get("/rock") do
  @our_choice = "rock"
  @opponent_choice = options.sample
  @outcome = outcomes[@opponent_choice][@our_choice]
  erb(:outcome)
end

get("/paper") do
  @our_choice = "paper"
  @opponent_choice = options.sample
  @outcome = outcomes[@opponent_choice][@our_choice]
  erb(:outcome)
end

get("/scissors") do
  @our_choice = "scissors"
  @opponent_choice = options.sample
  @outcome = outcomes[@opponent_choice][@our_choice]
  erb(:outcome)
end
