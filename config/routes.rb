Rails.application.routes.draw do
  
  devise_for :org_people, :controllers => { 
    :registrations => "org_people/registrations",
    :sessions => "org_people/sessions",
    :passwords => "org_people/passwords", 
    :confirmations => "org_people/confirmations" }
  
  devise_scope :org_person do 
    get 'signup',  to: 'org_people/registrations#new'
    get 'signin',  to: 'org_people/sessions#new'
    delete 'signout', to: 'org_people/sessions#destroy'
  end

  resources :catalogues
  resources :org_people
  root "catalogues#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
