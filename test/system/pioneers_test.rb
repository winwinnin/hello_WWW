require "application_system_test_case"

class PioneersTest < ApplicationSystemTestCase
  setup do
    @pioneer = pioneers(:one)
  end

  test "visiting the index" do
    visit pioneers_url
    assert_selector "h1", text: "Pioneers"
  end

  test "should create pioneer" do
    visit pioneers_url
    click_on "New pioneer"

    fill_in "First name", with: @pioneer.first_name
    fill_in "Last name", with: @pioneer.last_name
    click_on "Create Pioneer"

    assert_text "Pioneer was successfully created"
    click_on "Back"
  end

  test "should update Pioneer" do
    visit pioneer_url(@pioneer)
    click_on "Edit this pioneer", match: :first

    fill_in "First name", with: @pioneer.first_name
    fill_in "Last name", with: @pioneer.last_name
    click_on "Update Pioneer"

    assert_text "Pioneer was successfully updated"
    click_on "Back"
  end

  test "should destroy Pioneer" do
    visit pioneer_url(@pioneer)
    click_on "Destroy this pioneer", match: :first

    assert_text "Pioneer was successfully destroyed"
  end
end
