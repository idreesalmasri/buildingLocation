require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "creating a Location" do
    visit locations_url
    click_on "New Location"

    fill_in "City", with: @location.city
    fill_in "Country", with: @location.country
    fill_in "Latitude", with: @location.latitude
    fill_in "Longitude", with: @location.longitude
    fill_in "State", with: @location.state
    fill_in "Street", with: @location.street
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit locations_url
    click_on "Edit", match: :first

    fill_in "City", with: @location.city
    fill_in "Country", with: @location.country
    fill_in "Latitude", with: @location.latitude
    fill_in "Longitude", with: @location.longitude
    fill_in "State", with: @location.state
    fill_in "Street", with: @location.street
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end
