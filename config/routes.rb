BackboneRailsCrud::Application.routes.draw do

  resources :articles

  # Authentication
  devise_for :administrators

  # Admin namespace
  namespace :admin do
    resources :administrators, :only => [:index, :new, :create]
    resources :articles
  end
  match 'admin' => 'admin/articles#index'

  root :to => 'home#index'

end
