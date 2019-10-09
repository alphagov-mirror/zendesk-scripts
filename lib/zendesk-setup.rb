require 'zendesk_api'

@client = ZendeskAPI::Client.new do |config|
  config.url = ENV['ZENDESK_URL']
  config.username = ENV['ZENDESK_USER_EMAIL']
  # config.password = ENV['ZENDESK_USER_PASSWORD']
  # config.group_id = ENV['ZENDESK_GROUP']
  config.token = ENV['ZENDESK_TOKEN']
  config.retry = true
end