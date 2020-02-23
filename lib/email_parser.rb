# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
  attr_accessor :email_addreses
  
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    @email_addresses.split(",").map {|v| v.split(" ") }.flatten.uniq
  end
end
