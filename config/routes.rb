Rails.application.routes.draw do

  post  'add_to_cart' => 'cart#add_to_cart'
  get  'view_order' =>  'cart#view_order'
  get 'checkout' => 'cart#checkout'
  
  devise_for :users
  get 'categorical' => 'storefront#items_by_category'
  get 'branding' => 'storefront#items_by_brand'

  resources :categories
  resources :products

  root 'storefront#all_items'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
