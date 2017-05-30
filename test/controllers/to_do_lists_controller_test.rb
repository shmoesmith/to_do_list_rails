require 'test_helper'

class ToDoListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get to_do_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get to_do_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get to_do_lists_new_url
    assert_response :success
  end

end
