class BooksController < ApplicationController
	def index
		@books = Book.all
		respond_to do |format|
			format.html
			format.text
			format.json do
				render json: @books.map do |book|
					{
						title: book.title,
						author: book.author,
						already_read: book.already_read
					}
				end
			end
		end
	end

end
