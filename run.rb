require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/states' do

	@states = []
	state = {id: "WY",name: "Wyoming"}
	@states << state
	state = {id: "WI",name: "Wisconsin"}
	@states << state
	state = {id: "VA",name: "Virginia"}
	@states << state
	state = {id: "UT",name: "Utah"}
	@states << state
	state = {id: "TX",name: "Texas"}
	@states << state

	@states.sort_by! {|state| state[:name]}
	

  
  erb :states, layout: :main
end
