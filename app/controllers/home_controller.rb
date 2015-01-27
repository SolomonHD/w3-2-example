class HomeController < ApplicationController
  def login
  end

  def dashboard
    @time_zone = params[:time_zone]
    if @time_zone == "Pacific"
      @time = Time.now - 3.hours
    elsif @time_zone == "Mountain"
      @time = Time.now - 2.hours
    elsif @time_zone == "Central"
      @time = Time.now - 1.hours
    else
      @time = Time.now
    end
  end

  def logout
  end
end
