# Public: class for comparing the strings from two files and returning the
# difference between the two.
# 
# Examples
# 
#   file_diff = FileDiff.new("file1.txt", "file2.txt")
#   file_diff.difference
#   # => WrXNZlELaYpSW
#        OClcplDvIrLUj
#        0bTAvJXwXTyHd
#        pphfJwEzjrWuM
#        LXvisxadCJQwu
#        euUVZVBsLsADu
class FileDiff
  
  # Public: Initialize a FileDiff
  # Read both the files into an array
  # 
  # file1 - Name of the first file
  # file2 - Name of the second file
  def initialize(file1, file2)
    @arr1 = load_file(file1)
    @arr2 = load_file(file2)
  end

  # Public: Load files into array
  # Strips newline characters from the end of each line
  # 
  # file - The name of the file to load
  # 
  # Returns array of cleaned lines
  def load_file(file_name)
    arr = File.readlines(file_name).map { |x| x.chomp }
  end

  # Public: Take the difference between the first file and the second file 
  # arrays
  # 
  # Examples
  #   
  #   @arr1 = ["1","2","3","4"]
  #   @arr2 = ["2","4","5"]
  #   difference
  #   # => ["1","3"]
  # 
  # Returns the difference array
  def difference
    @arr1 - @arr2
  end
end