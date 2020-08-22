
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

# "avi@test.com, arel@test.com"

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        result = []
        @email_addresses.split(' ').each do | email |
            if email[email.length - 1] == ','
                result << email.slice(0, email.length - 1) if !result.include?(email)
            else
                result << email if !result.include?(email)
            end
        end
        result
    end
end