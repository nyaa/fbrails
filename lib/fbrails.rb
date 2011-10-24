require 'rubygems'
require "fbrails/version"
require 'net/https'
require 'json'
require 'httpclient'


module Fbrails

class FailedToGet < StandardError
end
    def self.get (url,raw = false)
#      uri = URI.parse(url)
#      http = Net::HTTP.new(uri.host,uri.port)
#      http.use_ssl = true if url =~ /^https/
#      http.verify_mode = OpenSSL::SSL::VERIFY_NONE if url =~ /^https/
#      request = Net::HTTP::Get.new(uri.request_uri)
#      resp = http.request(request).body
    resp = ::HTTPClient.new.get_content(url)
    if raw
      return resp
    end
    result = JSON.parse(resp)
    if result.has_key?("error")
      raise FailedToGet, "Failed to get, probably token expired"
    else
      return result
    end
    end

  def self.put(url)
  
  end   





  

require 'fbrails/auth'

require 'fbrails/graph'

end
