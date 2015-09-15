# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if first == "" || last == ""
    return nil
  end
  new_first = first.gsub(/\W+/,"")
  new_last = last.gsub(/\W+/,"")
  username = new_first[0] + new_last
  username = username.downcase.gsub(/\d/,"")

end


def format_year(my_year)
  my_year = my_year.to_s
  if my_year.length != 4
    return nil
  end
  my_year = my_year.split(//, 3)
  my_year = my_year[2]
end

def build_username
  nil
end
