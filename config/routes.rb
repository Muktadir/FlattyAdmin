FlattyAdmin::Application.routes.draw do

  devise_for :admins
  root :to => 'application#index'


  devise_scope :admin do
    get 'fcadmin', :to => 'devise/registrations#new'
    # root :to => 'devise/sessions#new'
    # get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session_path
    # post 'sign_in', :to => 'devise/session#create', :as => :user_session
    # get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

end
