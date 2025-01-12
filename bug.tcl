proc error_example {input} {
  if {$input == 0} {
    return 0
  } elseif {$input < 0} {
    error "Input must be non-negative" 
  } else {  
    return [expr {$input * 2}]
  }
}

puts [error_example 5]  ;# Output: 10
puts [error_example -1] ;# Output: Error: Input must be non-negative
puts [error_example 0] ;#Output: 0
