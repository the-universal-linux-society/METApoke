# METApoke
This Ruby script automates the checking of pokes on Facebook and notifies the user via email when a poke is recieved.
It utilizes Selenium WebDriver for web automation to log in to Facebook, check for pokes, and automatically poke back the users who poked you.
The script runs continuosly in the background, every hour checking for new pokes.

### Features:

- Automatically checks for pokes on Facebook.
- Sends email notifications when pokes are recieved, including information about the users who poked you.
- Automates poking back the users who poked you.

### Usage:

1. Ensure you have Ruby installed on your system.
2. Install the gems specified in the Gemfile.
3. Configure the script with your Facebook and SMTP information.
4. 'chmod +x pokes.rb'
5. run the script 'ruby pokes.rb'

