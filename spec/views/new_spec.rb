require 'rails_helper'

RSpec.describe 'application/hello', :type => :view do

    it "shows login link if not logged in" do
        session[:name] = nil
        render :template => 'application/hello.html.erb'
        expect(rendered).to include '/login'
    end
    
    it "welcomes user by name if logged in" do
        session[:name] = 'mike'
        render
        expect(rendered).to include "Hi, mike"
    end
end