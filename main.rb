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

def valid_phone_numbers(text)
  text.scan(/[2-9]\d{2}-\d{3}-\d{4}/)
end

def area_codes(string)
  string.scan(/[2-9]\d{2}(?=(?:-\d{3}-\d{4}))/)
end

def email_addresses(string)
  string.scan(/\w+@\w+\.\w+/)
end

def zip_codes(string)
  string.scan(/\b\d{5}\b/)
end

def hex_colors(text)
  text.scan(/#(?:\d|[a-fA-F]){3,6}/)
end
