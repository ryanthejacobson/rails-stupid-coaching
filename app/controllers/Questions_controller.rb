class QuestionsController < ApplicationController
  def ask
  end

  def home
  end

  def answer
    @question = params[:question]
    @answer = nil

    if @question.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
