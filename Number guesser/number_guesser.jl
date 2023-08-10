# A simple number guessing game
# Usage: julia number_guesser.jl

using Random

function guess_the_number()
    secret_number = rand(1:100)
    attempts = 0

    println("I've chosen a secret number between 1 and 100.")
    println("Can you guess it?")

    while true
        attempts += 1

        print("Enter your guess: ")
        flush(stdout)

        input = readline()

        try
            guess = parse(Int, input)

            if guess < secret_number
                println("Too low! Try again.")
            elseif guess > secret_number
                println("Too high! Try again.")
            else
                println("Congratulations! You guessed the secret number ", 
                        secret_number, " in ", attempts, " attempts. Well done.")
                break
            end
        catch
            println("It's a number guessing game. Try again :)")
        end
    end
    
    println("Do you want to play again? Y/N")
    choice = readline()
    
    if lowercase(choice) == "y"
        guess_the_number()
    else
        println("Goodbye!")
        return
    end
end

guess_the_number()
