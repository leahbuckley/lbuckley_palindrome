# frozen_string_literal: true

require_relative "lbuckley_palindrome/version"

module LbuckleyPalindrome

  # Returns true for a palindrome, false otherwise.

  def palindrome?
    return false if processed_content.empty?
    
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z\d+]/i).join.downcase
    end
end

class String
  include LbuckleyPalindrome
end

class Integer
  include LbuckleyPalindrome
end
