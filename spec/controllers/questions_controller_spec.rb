require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  describe 'GET #index' do
    it 'populates and array of all questions' do
      question1 = FactoryBot.create(:question)
      question2 = FactoryBot.create(:question)

      get :index

      expect(aasigns(:questions)).to match_array([question1, question2])
    end

    it 'render index view ' do
      get :index
      expect(responce).to render_template :index
    end
  end
end


