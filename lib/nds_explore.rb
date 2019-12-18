$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
 pp directors_database
end

def print_first_directors_movie_titles
  ss_movies = directors_database[0][:movies]
  index = 0

  while index < ss_movies.length do
    titles = ss_movies[index][:title]
    puts titles
    index +=1
  end
end

def total_gross(source)
  dir_to_earnings_hash = directors_totals(source)
  dir_names = list_of_directors(source)
  i = 0

  total = 0

  while i < dir_names.length do
    dir_name = dir_names[i]
    total += dir_to_earnings_hash[dir_name]
    i += 1
  end

  total
end
