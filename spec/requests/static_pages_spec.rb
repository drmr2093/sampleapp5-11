require 'spec_helper'

describe "Static pages" do

  subject { page }
<<<<<<< HEAD

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
=======

   shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
>>>>>>> 13fef36af8d0c193020546adfa2b606e4bfe7b2d
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

<<<<<<< HEAD
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
=======
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
>>>>>>> 13fef36af8d0c193020546adfa2b606e4bfe7b2d
  end

  describe "About page" do
    before { visit about_path }
<<<<<<< HEAD

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
=======

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  d describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to # fill in
    click_link "Contact"
    expect(page).to # fill in
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to # fill in
    click_link "sample app"
    expect(page).to # fill in
>>>>>>> 13fef36af8d0c193020546adfa2b606e4bfe7b2d
  end
end
