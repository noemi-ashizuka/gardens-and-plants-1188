Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end

  resources :plants, only: [:destroy] do
    # GET /plants/:id/plant_tags/new
    # post /plants/:id/plant_tags
    resources :plant_tags, only: [:new, :create]
  end

  # delete '/plants/:id' => 'plants#destroy', as: :plant
end
