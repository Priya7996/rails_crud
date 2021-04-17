Rails.application.routes.draw do
  # get 'users/index'
  # get 'users/show'
  # get 'users/create'
  # get 'users/update'
  # get 'users/destroy'

  get "users" => "users#index"
  get "user_get/:id" => "users#show"
  post "user_post"  => "users#create"

  put "user_update/:id" => "users#update"

  delete "user_delete/:id" => "users#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
