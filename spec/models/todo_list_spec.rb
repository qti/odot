require 'spec_helper'

describe TodoList do
  # pending "add some examples to (or delete) #{__FILE__}"
  # shoulda-matcher tests
  it { should have_many(:todo_items) }
end
