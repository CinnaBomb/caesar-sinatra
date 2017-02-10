def caesar_cipher(str)
	shift = 5
	letters = str.split("")
	i=0
	while i < letters.length
		if ('a'..'z').include?(letters[i]) 
			newchar = letters[i].ord+shift
			if newchar > 122
				newchar = 96 + newchar - 122
			end
			letters[i] = newchar.chr

		elsif ('A'..'Z').include?(letters[i]) 
			newchar = letters[i].ord+shift
			if newchar > 90
				newchar = 64 + newchar - 90
			end
			letters[i] = newchar.chr
		end
		i+=1
	end
	str = letters.join

end