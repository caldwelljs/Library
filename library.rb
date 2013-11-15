class Library
  def initialize
    @books = []
    puts "Welcome to our brand new library. Feel free to peruse our shelves, grab a coffee, and relax."
  end

  def books
  end

  def list_books

  end

  def borrowed_books
  end

  def available_books
  end

  def add_book(book)
    @books << book
    puts "The book #{book.title} has been added to the library."
  end

  def check_out(user, book)
  end

  def check_in(book)
  end
end

class Borrower
  def initialize(name)
    @name = name
    puts "Welcome to our Library #{@name}.  Here's your library card." 
  end

  def borrowed_books
  end

  def name
  end

  def borrowed_books_count
  end

  def borrowed_books_list
  end
end

class Book
  def initialize(title, author)
    @title = title
    @author = author
    puts "The book #{title} by #{author} has been created."
  end
  def title
    @title
  end
end
