Rails.application.routes.draw do
  root to: 'home#top'
  get 'home/help'
  post 'events/search',to: 'events#search'
  resources :events 

  resources :groups
	get    'group/login',   to: 'group_sessions#new'
  post   'group/login',   to: 'group_sessions#create'
  delete 'group/logout',  to: 'group_sessions#destroy'
  
  resources :users ,only: [:new,:create,:edit,:update,:destroy,:show]  
  get    'user/login',   to: 'user_sessions#new'
  post   'user/login',   to: 'user_sessions#create'
  delete 'user/logout',  to: 'user_sessions#destroy'
end