require_relative( 'models/casting' )
require_relative( 'models/movie' )
require_relative( 'models/star' )

require( 'pry-byebug' )

Casting.delete_all()
Movie.delete_all
Star.delete_all

movie1 = Movie.new ({ 'title' => 'The Dark Knight', 'genre' => 'Adventure'})
movie1.save()
movie2 = Movie.new ({ 'title' => 'Interstellar', 'genre' => 'Sci-Fi'})
movie2.save()
movie3 = Movie.new ({ 'title' => 'Inception', 'genre' => 'Sci-Fi'})
movie3.save()
movie4 = Movie.new ({ 'title' => 'The Prestige', 'genre' => 'Mystery'})
movie4.save()

star1 = Star.new ({ 'first_name' => 'Christian', 'last_name' => 'Bale'})
star1.save()
star2 = Star.new ({ 'first_name' => 'Matthew', 'last_name' => 'McConaughey'})
star2.save()
star3 = Star.new ({ 'first_name' => 'Leonardo', 'last_name' => 'DiCaprio'})
star3.save()
star4 = Star.new ({ 'first_name' => 'Hugh', 'last_name' => 'Jackman'})
star4.save()

casting1 = Casting.new ({ 'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 5})
casting1.save()
casting2 = Casting.new ({ 'movie_id' => movie2.id, 'star_id' => star2.id, 'fee' => 10})
casting2.save()
casting3 = Casting.new ({ 'movie_id' => movie3.id, 'star_id' => star3.id, 'fee' => 20})
casting3.save()
casting4 = Casting.new ({ 'movie_id' => movie4.id, 'star_id' => star4.id, 'fee' => 15})
casting4.save()
casting5 = Casting.new ({ 'movie_id' => movie4.id, 'star_id' => star1.id, 'fee' => 10})
casting5.save()

binding.pry
nil
