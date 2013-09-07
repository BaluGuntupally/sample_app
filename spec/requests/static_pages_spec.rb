require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it " should have the content home " do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/home"
      expect(page).to have_content("iClick2View")
    end
    it "should have right title" do
      visit "/static_pages/home"
      expect(page).to have_title("iClick2View | Home")
    end
  end
  describe "help page" do
   it "has to have Help "do
   visit "/static_pages/help"
   expect(page).to have_content("help")
   end
   it "should have right title" do
      visit "/static_pages/help"
      expect(page).to have_title("iClick2View | Help")
    end
  end
  describe "about page" do
   it "has to have About "do
   visit "/static_pages/about"
   expect(page).to have_content("About")
   end
   it "should have right title" do
      visit "/static_pages/about"
      expect(page).to have_title("iClick2View | About")
    end
  end
  
end
