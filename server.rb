require 'json'
require 'net/http'

uri = URI('http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=bbcradio1&api_key=dc9fd34e42449b66f86e39aa8b77f230&format=json')
response = Net::HTTP.get(uri)

ruby_hash = JSON.parse(response)