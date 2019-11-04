Rails.application.routes.draw do
  resource :comment
  root 'comments#index'  
end
