class SurveyController < ApplicationController
  def index
    render ('/survey/index')
  end

  def create
    @survey = User.create(name: params[:name], location: params[:location], language: params[:language])
    # render json: @survey
    redirect_to ('/result')
  end

  def result
    @surveys = User.all

    if session[:counter].nil?
        session[:counter] = 0
    end
    count = session[:counter] += 1

    flash.now.alert = "Post successfully created. You have submitted this form #{count} times!"
    render ('/survey/result')
  end


  def random
    if session[:counter].nil?
        session[:counter] = 0
    end
    count = session[:counter] += 1

    flash.now.notice = "Random Word Attempt ##{count}!"
    @random = (0...13).map { ('a'..'z').to_a[rand(26)] }.join
    render ('/survey/random')
  end
end
