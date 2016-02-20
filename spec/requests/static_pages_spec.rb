require 'rails_helper'
require 'spec_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Static page" do
    describe "Home page" do
      it "should have content 'rails tutorial'" do
        visit "/static_pages/home"
        expect(page).to have_content("rails tutorial")
        expect(page).to have_title("Home")
      end
    end

    describe "Help page" do
      it "should have the content 'Help'" do
        visit "/static_pages/help"
        expect(page).to have_content("Help")
        expect(page).to have_title("Help")
      end
    end

    describe "About us page" do
      it "should have the content 'About us'" do
        visit "/static_pages/about_us"
        expect(page).to have_content("About us")
        expect(page).to have_title("About us")
      end
    end

  end


end
