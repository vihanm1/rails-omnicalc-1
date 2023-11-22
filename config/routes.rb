Rails.application.routes.draw do
  get "/square/new", :controller => "games", :action => "new_square"
  get "/square/new", to: "games#new_square", as: "new_square"
  post "/square_results", to: "games#square_results", as: "square_results"
  get "/square_root/new", :controller => "games", :action => "new_square_root"
  get "/payment/new", :controller => "games", :action => "new_payment"
  get "/random/new", :controller => "games", :action => "random_calc"
  get "/", :controller => "games", :action => "homepage"
  root 'games#welcome'
end
