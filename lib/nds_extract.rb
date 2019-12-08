# Provided, don't edit
require 'directors_database'

# A method we're giving you. This "flattens"  Arrays of Arrays so:
# [[1,2],[3,4,5], [6]] => [1,2,3,4,5,6].
def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data) #adds director name to new Hash
  {
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end
# Your code after this point

def movies_with_director_key(name, movies_collection) #adds :director_name key to each movie Hash (AoH of movies)
  # GOAL: For each Hash in an Array (movies_collection), provide a collection
  # of movies and a directors name to the movie_with_director_name method
  # and accumulate the returned Array of movies into a new Array that's returned by this method.
  #
  # INPUT:
  # * name: A director's name
  # * movies_collection: An Array of Hashes where each Hash represents a movie
  #
  # RETURN: AoH where each Hash represents a movie; however, they should all have a
  # :director_name key. can use the provided movie_with_director_name method
# new_AOH = []
# i = 0
# while i < movies_collection.length do
# name = directors_database[0][:name]
# movies = directors_database[0][:movies][3]
# movie_with_director_name(name, movies)
require 'pp'
pp name
end



def gross_per_studio(collection) # collects each movie based on the studio key
  # GOAL: Given an AoH where each Hash represents a movie, return a Hash that
  # includes the total worldwide_gross of all the movies from each studio
  #
  # INPUT: * collection: Array of Hashes where each Hash represents a movie
  #
  # RETURN: Hash whose keys are the studio names and whose values are the sum
  # total of all the worldwide_gross numbers for every movie in the input Hash
end

def movies_with_directors_set(source)
# when given a Hash with keys :name and :movies,
#   returns an Array of Hashes that represent movies
#     and each Hash has a :director_name key set with the value that was in :name
#
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT: * source: An Array of Hashes containing director information including
  # :name and :movies (## uses method movies_with_director_key(name, movies_collection)
  #
  # RETURN: AoA containing all of a director's movies. Each movie needs a :director_name key added to it.
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds) # summary of earnings per studio
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
