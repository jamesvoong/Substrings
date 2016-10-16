def subStrings (phrase, dictionary)
	foundInDictionary = Hash.new(0)

	wordArray = phrase.downcase.split(/\W/)

	wordArray.each do |currentWord|
		letters = currentWord.split("")
		letters.each_index do |currentIndex|
			currentIndex.upto(letters.size-1) do |comparingIndex|
				currentWord = letters[currentIndex..comparingIndex].join("")
				if dictionary.include?(currentWord)
					foundInDictionary[currentWord] += 1
				end
			end 
			break if currentIndex >= letters.size-2
		end
	end
	return foundInDictionary
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print subStrings("below", dictionary)
puts ""
print subStrings("Howdy partner, sit down! How's it going?", dictionary)
puts ""