# Rails.application.routes.draw do
#   devise_for :users
#   root to: "tweets#index"
#   resources :tweets do
#     resources :comments, only: [:create]
#   end
#   resources :users, only: [:show]

  # root  'tweets#index'
  # get   'tweets'      => 'tweets#index'
  # get   'tweets/new'  =>  'tweets#new'
  # post  'tweets'    =>  'tweets#create'
  # get   'users/:id'   =>  'users#show'
  # delete  'tweets/:id'  => 'tweets#destroy'
  # get   'tweets/:id/edit'  => 'tweets#edit'
  # patch   'tweets/:id'  => 'tweets#update'
  # get 'tweets/:id' => 'tweets#show'
# end



Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
