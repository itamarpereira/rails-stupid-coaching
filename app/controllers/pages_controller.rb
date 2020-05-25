class PagesController < ApplicationController
  def ask
  end

  def answer 
    @question = "what time is it?"
    if params[:answer] == @question
      @answer = "#{Time.now} Time to get dressed and go to work!"
    elsif params[:answer].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "It's not a question, get dressed and go to work!"
    end
  end

end
