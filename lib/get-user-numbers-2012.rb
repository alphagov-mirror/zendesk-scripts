require 'zendesk_api'

require_relative 'zendesk-setup.rb'

#
# 2012
#

@y2012_tickets = []

(1..140).each do |i|
  @client.search(:query => "type:ticket group_id:#{group_id} organization_id:none status:closed updated_at>=2012-01-01 updated_at<2013-01-01").page(i).each do |ticket|
    @y2012_tickets << ticket['id']
    puts ticket['id']
  end
end

File.open("data/#{group_id}/y2012_tickets", "w") { |file| file.write(@y2012_tickets) }
