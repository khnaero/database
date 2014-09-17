foo, bar, baz = ARGV
if foo == "store"
	newfile = open("key.txt", 'a')
	newfile.puts("#{bar}, #{baz}")
	puts "#{baz}"
	newfile.close # get error if put at end of file
end

if foo == "retrieve"
 	stuff = Hash[*File.read("key.txt").split(/[, \n]+/)]
 	puts stuff[bar]
end


# need help with 4th argument
# arrays have some sort of uniq method; is there one for hash?

