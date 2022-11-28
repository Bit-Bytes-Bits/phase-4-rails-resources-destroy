Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update, :destroy]
  # custom route
  patch "/birds/:id/like", to: "birds#increment_likes"
end
