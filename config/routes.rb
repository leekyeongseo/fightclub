Rails.application.routes.draw do
  get '/keyboard' => 'api#api_init'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'home#index'
end
