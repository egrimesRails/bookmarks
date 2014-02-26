require 'spec_helper'

describe Bookmark do
  
  before do
    @bookmark = Bookmark.new(name: "Example User", url: "user@example.com", saved_at: "time")
  end
  
  subject { @bookmark }
  
  it { should respond_to(:name) }
  it { should respond_to(:url) }
  
  it { should be_valid }
  
  describe "when name is not present" do
    before { @bookmark.name = " " }
    it { should_not be_valid }
  end
  
  describe "when url is not present" do
    before { @bookmark.url = " " }
    it { should_not be_valid }
  end
end

  describe "bookmarks page" do
    
    it "should exist" do
      visit '/bookmarks'
    end
  end
  
  describe "new bookmarks page" do
    
    it "should exist" do
      visit '/bookmarks/new'
    end
  end
