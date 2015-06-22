require 'spec_helper'

describe "Deleting todo lists" do
  # Create todo list and assign it to variable (:todo_list)
  let!(:todo_list) { TodoList.create(title: "Groceries", description: "Greocery list.") }

  it "is succesful when clicking the destroy link" do
    visit "/todo_lists"

    within "#todo_list_#{todo_list.id}" do
      click_link "Destroy"
    end
    expect(page).to_not have_content(todo_list.title)
    expect(TodoList.count).to eq(0)
  end
end