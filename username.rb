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

def build_username(first, last, year, user_type=0)
  type_array = ["", "seller-", "manager-", "admin-"]
  username = format_name(first, last)
  username = username + format_year(year)
  return username = type_array[user_type] + username
end



  $usernames = {}
def generate_username(first_name, last_name, birth_year, privilege_level=0)
  new_username = build_username(first_name, last_name, birth_year, privilege_level)

  if $usernames[new_username] == nil
    $usernames[new_username] = 0
    return new_username
  else
    $usernames[new_username] += 1
    new_username = new_username + "_" + $usernames[new_username].to_s
    return new_username
  end
  # usernames.index(new_username)
  # if usernames.index(new_username) == nil
  #   usernames.push(new_username)
  #   return new_username
  # else
  #   new_username = new_username + "_1"
  #   usernames.push(new_username)
  #   return new_username
  # end
end
