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
    puts "lending..."
    if @count > 0
      @count -= 1
    else
      puts "No remaining copies"
    end
  end
  def return
    puts "returning..."
    if @count < 3
      @count += 1
    else
      puts "All books checked in"
    end
  end
end