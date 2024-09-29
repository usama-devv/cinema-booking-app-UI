class Movie {
  final String poster, title, genre, synopsis;
  final double rating;
  final int duration;

  Movie({
    required this.poster,
    required this.title,
    required this.genre,
    required this.synopsis,
    required this.rating,
    required this.duration,
  });
}

List<Movie> movies = [
  Movie(
    poster: 'https://m.media-amazon.com/images/I/51rOnIjLqzL._AC_SY679_.jpg',
    title: 'The Dark Knight',
    genre: 'Action',
    synopsis: 'Batman faces off against the Joker, a criminal mastermind bent on plunging Gotham City into anarchy.',
    rating: 9.0,
    duration: 152,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/51EG732BV3L._AC_.jpg',
    title: 'The Matrix',
    genre: 'Action',
    synopsis: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.',
    rating: 8.7,
    duration: 136,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/91kFYg4fX3L._AC_SL1500_.jpg',
    title: 'Interstellar',
    genre: 'Adventure',
    synopsis: 'A team of explorers travels through a wormhole in space in an attempt to ensure humanity’s survival.',
    rating: 8.6,
    duration: 169,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg',
    title: 'Avengers: Endgame',
    genre: 'Action',
    synopsis: 'The Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.',
    rating: 8.4,
    duration: 182,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/71c05lTE03L._AC_SY679_.jpg',
    title: 'Pulp Fiction',
    genre: 'Crime',
    synopsis: 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',
    rating: 8.9,
    duration: 154,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/51v5ZpFyaFL._AC_SY679_.jpg',
    title: 'Fight Club',
    genre: 'Drama',
    synopsis: 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.',
    rating: 8.8,
    duration: 139,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/519NBNHX5BL._AC_SY679_.jpg',
    title: 'Forrest Gump',
    genre: 'Drama',
    synopsis: 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.',
    rating: 8.8,
    duration: 142,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/41+eK8zBwQL._AC_.jpg',
    title: 'The Godfather',
    genre: 'Crime',
    synopsis: 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.',
    rating: 9.2,
    duration: 175,
  ),

  Movie(
    poster: 'https://m.media-amazon.com/images/I/51NiGlapXlL._AC_SY679_.jpg',
    title: 'The Shawshank Redemption',
    genre: 'Drama',
    synopsis: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
    rating: 9.3,
    duration: 142,
  ),

];
