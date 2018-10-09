class Work < ApplicationRecord
  has_many :votes
	# belongs_to :user # optional

  validates :title, presence: true

  # validates :title, uniqueness: true
  # only needs to be unique for the category

  def self.albums
    return Work.select { |work| work.category == "album" }
  end

  def self.books
    return Work.select { |work| work.category == "book" }
  end

  def self.movies
    return Work.select { |work| work.category == "movie" }
  end
end