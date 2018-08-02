require_relative("../db/sql_runner")

class Movie

  attr_reader :id
  attr_accessor :title, :genre, :budget

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @budget = options['budget']
  end

  def save()
    sql = "INSERT INTO movies (title, genre, budget)
    VALUES ($1, $2, $3) RETURNING id"
    values = [@title, @genre, @budget]
    movie = SqlRunner.run(sql, values).first
    @id = movie['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM movies"
    movies_array = SqlRunner.run(sql)
    result = movies_array.map { |movie| Movie.new(movie) }
    return result
  end

  def update()
    sql = "UPDATE movies SET (title, genre, budget) = ($1, $2, $3) WHERE id = $4"
    values = [@title, @genre, @budget, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE from movies WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM movies"
    SqlRunner.run(sql)
  end

  def stars()
    sql = "SELECT stars.* FROM stars INNER JOIN
    castings ON stars.id = castings.star_id
    WHERE castings.movie_id = $1"
    values = [@id]
    stars_list = SqlRunner.run(sql, values)
    return stars_list.map { |star| Star.new(star) }
  end

  def remaining_budget()
   sql = "SELECT SUM(castings.fee) FROM castings WHERE castings.movie_id = $1"
   values = [@id]
   result = SqlRunner.run(sql, values).first
   return @budget - result['sum'].to_i()
 end

end
