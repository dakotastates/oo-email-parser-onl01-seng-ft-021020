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
    if @email_addresses.include?"," then
      b = []
      @email_addresses.split(", ").uniq.each do |v|
        if !v.include?" " then
          b << v
        else
          v.split(" ").each { |z| b << z}
        end
      end
      b
    else
      @email_addresses.split(" ").uniq
    end
  end

end