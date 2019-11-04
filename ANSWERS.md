# Q0: Why are these two errors being thrown?
This is because the database initialized without anything. Therefore, running migrate would ensure that we can update the databases in the future. The second error is because we didn't give it a class and enough information for the program to execute anything meaningful.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemons are chosen randomly from a list of pokemons that are from the database. The common factor is that all of them don't have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It is essentially a class button that patches by using capture_path.

# Question 3: What would you name your own Pokemon?
Cikaphu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in damage_path and it needed a trainer id parameter getting it passed into.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This should eliminate any duplicated names by raising an error.

# Give us feedback on the project and decal below!
Great Project.

# Extra credit: Link your Heroku deployed app
