module SmsTool
	account_sid = ENV['AC50daa8ebe37f16a97321ee22ecfac50e']
	auth_token = ENV['842f98b92745e0c5c6caa3f4fd54c54f']

	@client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(number:, message:)
  	@client.messages.create(
  		from: ENV['+13852360127'],
  		to: "+1#{number}",
  		body: "#{message}"
  		)
  end
end