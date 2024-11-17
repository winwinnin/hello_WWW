require "test_helper"

class PioneersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pioneer = pioneers(:one)
  end

  test "should get index" do
    get pioneers_url
    assert_response :success
  end

  test "should get new" do
    get new_pioneer_url
    assert_response :success
  end

  test "should create pioneer" do
    assert_difference("Pioneer.count") do
      post pioneers_url, params: { pioneer: { first_name: @pioneer.first_name, last_name: @pioneer.last_name } }
    end

    assert_redirected_to pioneer_url(Pioneer.last)
  end

  test "should show pioneer" do
    get pioneer_url(@pioneer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pioneer_url(@pioneer)
    assert_response :success
  end

  test "should update pioneer" do
    patch pioneer_url(@pioneer), params: { pioneer: { first_name: @pioneer.first_name, last_name: @pioneer.last_name } }
    assert_redirected_to pioneer_url(@pioneer)
  end

  test "should destroy pioneer" do
    assert_difference("Pioneer.count", -1) do
      delete pioneer_url(@pioneer)
    end

    assert_redirected_to pioneers_url
  end
end
