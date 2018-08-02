require_relative( 'models/casting' )
require_relative( 'models/movie' )
require_relative( 'models/star' )

require( 'pry-byebug' )

movie1 = Movie.new ({ 'title' => 'The Dark Knight', 'genre' => 'Adventure'})
movie2 = Movie.new ({ 'title' => 'Interstellar', 'genre' => 'Sci-Fi'})
movie3 = Movie.new ({ 'title' => 'Inception', 'genre' => 'Sci-Fi'})
movie4 = Movie.new ({ 'title' => 'The Prestige', 'genre' => 'Mystery'})

star1 = Movie.new ({ 'first_name' => 'Christian', 'last_name' => 'Bale'})
star2 = Movie.new ({ 'first_name' => 'Matthew', 'last_name' => 'McConaughey'})
star3 = Movie.new ({ 'first_name' => 'Leonardo', 'last_name' => 'DiCaprio'})
star4 = Movie.new ({ 'first_name' => 'Hugh', 'last_name' => 'Jackman'})

casting1 = Casting.new ({ 'movie_id' => movie1.id, 'star_id' => star1.id})
casting1 = Casting.new ({ 'movie_id' => movie2.id, 'star_id' => star2.id})
casting1 = Casting.new ({ 'movie_id' => movie3.id, 'star_id' => star3.id})
casting1 = Casting.new ({ 'movie_id' => movie4.id, 'star_id' => star4.id})
casting1 = Casting.new ({ 'movie_id' => movie4.id, 'star_id' => star1.id})

binding.pry
nil
