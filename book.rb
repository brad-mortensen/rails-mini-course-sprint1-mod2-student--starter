class Book
  attr_reader :title, :author
  attr_writer :finished
  attr_accessor :count
  include Lendable
  def initialize(title, author)
    @title = title
    @author = author
    @finished = false
    @count = 3
  end
end

def Book.recommended_books
  [
    Book.new("The Well-Grounded Rubyist", "David A. Black"),
    Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
    Book.new("Effective Testing with RSpec 3", "Myron Marston"),
  ]
end

module Lendable
  def lend
    if count > 0
      count -= 1
    else
      puts "You cant do dat"
    end
  end
end