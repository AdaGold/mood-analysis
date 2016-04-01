FEELINGS = {
  happy: %w(yay good great),
  sad: %w(terrible awful horrible)
}

def analyze_mood(words)
  happy = 0
  sad = 0
  words = strip_punctuation(words)
  words.downcase!
  words.split(" ").each do |word|
    if FEELINGS[:happy].include? word
      happy += 1
    elsif FEELINGS[:sad].include? word
      sad += 1
    end
  end
  return ":-)" if happy > sad
  return ":-(" if happy < sad
  return ":-|"
end

text = [
  "03/01 I'm having a terrible horrible no good day.",
  "03/13 Yesterday was horrible, but today is great! Yay!",
  "04/02 Sad Panda. #terribleday",
  "04/15 Hello World, today is fabulous! #yay",
  "05/01 Great! Yay! Good! Yay! Happy. Happy.",
  "05/11 Yay, yay, yay! I'm having a awfuly great day."
]

def strip_punctuation(string)
  string.gsub(/[^A-Za-z0-9\s]/i, '')
end
# puts analyze_mood(text[0])
# puts analyze_mood(text[1])

text.each do |sentence|
  puts "#{sentence[0..4]} #{analyze_mood(sentence)}"
end

def happy_days(text)
  total_days = 0
  hap_days = 0
  text.each do |sentence|
    total_days += 1
    if analyze_mood(sentence) == ":-)"
      hap_days += 1
    end
    break if hap_days == 3
  end
  puts "It takes #{total_days} entries for 3 happy days to occur."
end


def overall_mood(text)
  feels = 0
  text.each do |sentence|
    if analyze_mood(sentence) == ":-)"
      feels += 1
    elsif analyze_mood(sentence) == ":-("
      feels -= 1
    end
  end
  if feels > 1
    feels = ":-)"
  elsif feels < 1
    feels = ":-("
  else
    feels = ":-|"
  end
  puts "The overall spirit is #{feels}"
end

happy_days(text)
overall_mood(text)
