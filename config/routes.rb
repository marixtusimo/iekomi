Rails.application.routes.draw do
  devise_for :owners, controllers: {
    sessions: 'owners/sessions',
    passwords:     'owners/passwords',
    registrations: 'owners/registrations'
  }
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root to: 'posts#index'
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  devise_scope :owner do
    post 'owners/guest_sign_in', to: 'owners/sessions#guest_sign_in'
  end
end
