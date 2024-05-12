#! /bin/ruby

# This ruby script is for educational purposes ONLY #
# Web scraping violates META's terms of service #
require 'selenium-webdriver'
require 'net/smtp'

def login_to_facebook(email, password)
	driver = Selenium::WebDriver.for :chrome # you need ChromeDriver install in your $PATH #
	driver.navigation.to 'https://www.facebook.com/'

	#----fill in the email & password forms----#

driver.find.element(:id, 'email').send_keys(email)
driver.find.element(:id, 'pass').send_keys(password)
driver.find.element(:id, 'loginbutton').click
end

def check_pokes(driver)
	pokes_recieved = 0
	pokers = []

	if pokes_recieved > 0

		send_notification_email(pokes_recieved, pokers)
		poke_back(pokers)
	end
end

def poke_back(driver, pokers)
end

#----loop to continuously check for pokes----#
loop do 
	email = 'your_email@youremail.com'
	password = 'your_facebook_password'

	login_to_facebook(email, password)

	driver = Selenium::WebDriver.for :chrome 
	check_pokes(driver)

	driver.quit
	sleep(3600)
end

