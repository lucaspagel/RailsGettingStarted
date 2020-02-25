Rails.application.routes.draw do
  root 'welcome#index'

  resources :articles

  get 'welcome/index'

  get 'articles/new'

  #post 'articles/new'
end
