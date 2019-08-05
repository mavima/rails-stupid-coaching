class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:my_input]
    if @your_message.end_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    elsif @your_message == "I am going to work right now!"
      @answer = ''
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
