class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question].capitalize

    if @question.blank?
      @coach_answer = "I can't hear you!"
    elsif @question == "I am going to work"
      @coach_answer = "Great!"
    elsif @question.include?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
