proc improved_error_example {input} {
  try {
    if {$input == 0} {
      return 0
    } elseif {$input < 0} {
      error "Input must be non-negative"
    } else {
      return [expr {$input * 2}]
    }
  } on error errmsg {
    puts "An error occurred: $errmsg"
    return -1 ;#Return a default value or handle the error as needed
  }
}

puts [improved_error_example 5]  ;# Output: 10
puts [improved_error_example -1] ;# Output: An error occurred: Input must be non-negative
puts [improved_error_example 0] ;# Output: 0