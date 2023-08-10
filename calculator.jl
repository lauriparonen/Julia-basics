# A simple calculator written in Julia
# Author: Lauri Paronen
# Usage: julia calculator.jl

function add(a, b)
    return a + b
end

function sub(a, b)
    return a - b
end

function mul(a, b)
    return a * b
end

function div(a, b)
    return a / b
end

function pow(a, b)
    return a ^ b
end

function fac(a)
    if a == 0
        return 1
    else
        return a * fac(a - 1)
    end
end

function main()
    println("Please select an operation:")
    println("1. Add")
    println("2. Subtract")
    println("3. Multiply")
    println("4. Divide")
    println("5. Power")
    println("6. Factorial")
    println("7. Exit")
    print("Enter your choice: ")

    choice = readline()

    if choice == "1"
        print("Enter first number: ")
        a = readline()
        print("Enter second number: ")
        b = readline()
        println("Result: ", add(parse(Int64, a), parse(Int64, b)))

    elseif choice == "2"
        print("Enter first number: ")
        a = readline()
        print("Enter second number: ")
        b = readline()
        println("Result: ", sub(parse(Int64, a), parse(Int64, b)))

    elseif choice == "3"
        print("Enter first number: ")
        a = readline()
        print("Enter second number: ")
        b = readline()
        println("Result: ", mul(parse(Int64, a), parse(Int64, b)))

    elseif choice == "4"
        print("Enter first number: ")
        a = readline()
        print("Enter second number: ")
        b = readline()
        println("Result: ", div(parse(Int64, a), parse(Int64, b)))

    elseif choice == "5"
        print("Enter first number: ")
        a = readline()
        print("Enter second number: ")
        b = readline()
        println("Result: ", pow(parse(Int64, a), parse(Int64, b)))

    elseif choice == "6"
        print("Enter number: ")
        a = readline()
        println("Result: ", fac(parse(Int64, a)))

    elseif choice == "7"
        println("Goodbye!")
        return
    else
        println("Invalid choice!")
        return
    end

    println("Do you want to continue? (y/n)")
    choice = readline()

    if choice == "y"
        main()
    else
        println("Goodbye!")
        return
    end

end

main()
