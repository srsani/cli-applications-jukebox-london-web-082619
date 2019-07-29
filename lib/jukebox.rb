# Add your code here

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help ()
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def say_hello(name)
  "Hi #{name}!"
end


def list(songs)
  for i in 0..songs.length-1   
     puts "#{i+1}. #{songs[i]}\n"
  end  
end

def play(songs)
  song_list_number = []
  song_hash = {}
  j = 1
  for i in songs
    song_list_number.append(j.to_s)
    song_hash[j.to_s] = i
    j +=1
  end
  
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if song_list_number.include?(user_input)
    puts "Playing #{song_hash[user_input]}"
  elsif song_hash.each_value.include?(user_input)
    puts "Playing #{user_input}"
  else 
    puts "Invalid input, please try again" 
  end
end

def exit_jukebox
  puts "Goodbye"
  $exit_program = false
end

def run(songs)
  # puts "Enter your name:"
  # users_name = gets.chomp
  # say_hello (users_name)
  help()
  $exit_program= true
  while $exit_program
    puts "Please enter a command:"
    user_input = gets.chomp
    if user_input == "help"
      help()
    elsif user_input == "play"
      play(songs)
    elsif user_input == "list"
      list(songs)
    elsif user_input == "exit"
      exit_jukebox
    end
  end
end
# run(songs)