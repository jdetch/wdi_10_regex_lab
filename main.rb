require_relative 'source'
require 'pry'

def valid_ip_addresses(text)
  text.scan(/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/)
  # braces enclose ranges
  # need backslashes to escape dots because . stands for any single character
  # Another solution (?:\d{1,3}\.){3}\d{1,3}
end

def valid_mit_ip_addresses(text)
  text.scan(/18\.(?:\d{1,3}\.){2}\d{1,3}/)
end

def non_mit_ip_addresses(string)
  string.scan(/\b(?!18)(?:\d{1,3}\.){3}\d{1,3}\b/)
  # or
  # valid_ip_addresses(string)-valid_mit_ip_addresses(string)
end

def valid_phone_numbers
end

def area_codes
end

def email_addresses
end

def zip_codes
end

def hex_colors
end
