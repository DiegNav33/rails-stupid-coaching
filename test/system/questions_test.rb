require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit root_path
    assert_selector "label", text: "Ask your coach anything"
  end
end
