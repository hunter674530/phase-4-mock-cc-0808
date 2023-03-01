class ActivitiesController < ApplicationController

  def index 
    activities = Activity.all 
    render json: activities, status: :ok
  end

  def delete
    activity = Activity.find(params[:id])
    activity.destroy
  end

end
