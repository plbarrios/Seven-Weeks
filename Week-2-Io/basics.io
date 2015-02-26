// Simple addition
val := 1 + 1
"1 + 1 = #{val}\n\n" interpolate println



// The following line fails, complaining that argument 0 to message '+' is a sequence:
//1 + "one"

// These fail, complaining that '+' is only applicable to "number encodings"
// "one" + 1
// "1" + 1

// More failing implicit conversions:
// false + 1
// 1 + nil

// Conclusion: Io is strongly typed.
"Io is strongly typed\n\n" println


// Set up some objects from the examples:
Vehicle := Object clone
Vehicle description := "Something to take you places"
Car := Vehicle clone
ferrari := Car clone
Car drive := method("Vroom" println)

"ferrari has the following slots:" println
ferrari slotNames println
"\n\n" println

"ferrari's prototype:" println
ferrari proto println
"\n\n" println

"Car's drive method:" println
Car getSlot("drive") code println
"\n\n" println

"""
Watch this:
    ferrari color ::= "red"
    ferrari slotNames println
""" println
ferrari color ::= "red"
ferrari slotNames println
"""
  See the setColor slot? Now
    ferrari
  Gives us:
""" println
ferrari println


Car exec := method(call target)
"""
Now add an 'exec' method to Car, that calls the slot passed as the first argument.
The result is that we can do this:
    ferrari exec drive
Which will run the code in the "drive" slot. See?
""" println

ferrari exec drive

"" println
nil
