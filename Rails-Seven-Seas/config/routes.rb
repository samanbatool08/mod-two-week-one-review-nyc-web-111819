Rails.application.routes.draw do
  resources :seas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :seas, only: [:index, :new, :show, :edit, :update]

# get '/', to: 'seas#welcome'
# root to: 'seas#welcome'
root 'seas#welcome'

end
