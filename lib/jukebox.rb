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


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index do |option, index| 
    puts "#{index + 1}.  + #{option}"
  end
end

def prompt
  puts "Please enter a song name or number:"
end

def get_user_input
  gets.strip
end


def play(songs)
  ask = prompt
  answer = get_user_input
  
  if songs.any? {|options| answer == options}
    feedback = "Playing #{answer}"
  elsif songs.any? {|options| songs[answer.to_i] == songs(options)}
    feedback = "Playing #{songs[answer.to_i + 1]}"
  else
    feedback = "Invalid input, please try again"
  end
  puts feedback
end


def exit_jukebox
  puts "Goodbye"
end

def ask_command
  puts "Please enter a command:"
end

def run(songs)
  ask_command
  command = get_user_input
  
  if command == "exit"
    feedback = exit_jukebox
  end
  feedback
  
end




