# Public: A Class Library that will function as a library with library borrowers and books that can be checked in and out.

class Library
  
  # Public: Initializes Library and automatically creates an empty array of books
  
  def initialize
    @books = []
    puts "Welcome to our new library. Feel free to peruse our shelves, grab a coffee, and relax."
  end

  def list_books
    @books.each do |book| 
      if book.checked_out == true
        puts "#{book.title} is checked out."
      else
        puts "#{book.title} is available."
      end
    end
  end


  def borrowed_books
    @books.each do |book|
      if book.checked_out
        puts "#{book.title} is checked out by #{book.borrower}."
      end
    end
  end


  def available_books
    @books.each do |book|
      if book.checked_out == false
        puts book.title
      end
    end
  end


  def add_book(book)
    @books << book
    puts "The book #{book.title} has been added to the library."
  end


  def check_out(user, book)
    if user.books.length == 2
      puts "Sorry, that user already has two books checked out"
      return
    elsif book.checked_out == false
      book.checked_out = true
      book.borrower = user
      user.books << book
      puts "#{user.name} has checked out the book #{book.title} by #{book.author}."
    else
      puts "Sorry, this book is not available"
    end
  end

  def check_in(book)
    if book.checked_out
      puts "#{book.borrowr.name} has returned the book #{book.title} by #{book.author}."
      book.borrower.books.delete(book)
      book.checked_out = false
      book.borrower = nil
    else
      puts "This book is not checked out. Thanks for bringing it back anyway!"
    end
  end
end

# Public: The Borrower class that describes users at the Library  

class Borrower

  attr_accessor :books
  attr_accessor :name

# Public: Creates borrower object with instances of individual borrowers by name and an empty array of the books borrowed
  def initialize(name)
    @name = name
    puts "Welcome to our Library #{@name}.  Here's your library card." 
    @books = [] 
  end


  def borrowed_books_list
    @books.each do |book|
      puts book.title
    end
  end
end



class Book
  attr_accessor :title
  attr_accessor :author
  attr_accessor :checked_out
  attr_accessor :borrower

  def initialize(title, author)
    @title = title
    @author = author
    @checked_out = false
    @borrower = nil
    puts "The book #{title} by #{author} has been created."
  end
end
