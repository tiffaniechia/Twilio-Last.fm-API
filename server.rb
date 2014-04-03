require 'twilio-ruby'
 
account_sid = 'AC4c942e8e65199b762846fa63c15ef7be'
auth_token = '0f6e736a0cd9f3ea6b992714efc169cd'
client = Twilio::REST::Client.new account_sid, auth_token 
 
#Send SMS...
client.account.messages.create(to: "+44 your number", from: "+44a twilio number", body: "the contents of your message")
 
#Make a call...
client.account.calls.create(to: "+44 your number", from: "+44a twilio number", url: "http://blahblah.ngrok.com/cheese")
