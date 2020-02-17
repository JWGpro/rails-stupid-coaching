class QuestionsController < ApplicationController
  def ask

  end

  def answer
    stub = 'get dressed and go to work!'
    if params[:question] == 'I am going to work'
      @response = 'Great!'
    elsif params[:question].include?('?')
      @response = "Silly question, #{stub}"
    else
      @response = "I don't care, #{stub}"
    end
  end
end
