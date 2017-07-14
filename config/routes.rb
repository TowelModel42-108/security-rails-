Rails.application.routes.draw do
  resources :lives
  
  resources :cats do
    resources :lives
  end

  get 'sessions/new'
  get 'logout' => 'sessions#destroy'

  resource :user
  get 'users/new'

  root 'sessions#new'
  resource :session

end
