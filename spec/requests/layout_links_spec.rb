require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do

    it "should have a Home page at /" do
      get '/'
      response.should have_selector('title', :content => "Home")
    end

    it "should have a Contact page at /Contact" do
      get '/contact'
      response.should have_selector('title', :content => "Contact")
    end
    
    it "should have an About page at /about" do
      get '/about'
      response.should have_selector('title', :content => "About")
    end
    
    it "should have a Help page at /help" do
      get '/help'
      response.should have_selector('title', :content => "Help")
    end
  end
end
