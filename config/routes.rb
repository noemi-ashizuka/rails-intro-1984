Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: "pages#home" # prefix by default: root
  # I wan to go to an about page
  # http_verb path, to: "controller#action", as: :prefix(nickname)
  get "/about", to: "pages#about", as: :about
  get "/contact", to: "pages#contact", as: :contact
  

  # to generate a controller: 
  # rails generate controller pages
  # rails g controller pages
end
