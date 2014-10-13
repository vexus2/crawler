require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

module Crawler
  class Amazon
    include Capybara::DSL

    def login
      visit '/'
      fill_in 'username', with: 'YOUR_AMAZON_USER_ID'
      fill_in 'password', with: 'YOUR_AMAZON_PASSWORD'
      click_button 'サインイン'
    end
  end
end

Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'https://affiliate.amazon.co.jp/'

crawler = Crawler::Amazon.new
crawler.login

