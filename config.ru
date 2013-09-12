# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Slambook::Application


ActionController::Routing::Routes.draw do |map|
map.resources :posts
map.resources :home
map.root :controller => "home";
map.connect ':controller/:action/:id'
map.connect ':controller/:action/:id.:format'