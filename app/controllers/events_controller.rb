class EventsController < ApplicationController

  def index
    @event = Event.new
    @events = Event.all

    @user = User.new
    @users = User.all
    
    @day = ["日", "月", "火", "水", "木", "金", "土"]
  end

  def new
  end

  def create
    @event = Event.new(event_params)

    @event.save!
    redirect_to root_path
  end

  private
  def event_params
    params.require(:event).permit(:user_id, :date, :start, :finish, :person)
  end
  
end

