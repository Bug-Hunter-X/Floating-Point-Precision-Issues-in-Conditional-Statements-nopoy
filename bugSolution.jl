```julia
function my_function(x)
  if x > eps()
    return x^2
  elseif x < -eps()
    return -x
  else
    return 0.0
  end
end

x = -5
y = my_function(x)
println(y) # Output: 5

x = 5
y = my_function(x)
println(y) # Output: 25

# Correct handling of floating point numbers near zero
x = 1e-10
y = my_function(x)
println(y) # Output: 1e-20

x = -1e-10
y = my_function(x) 
println(y) # Output: 1e-10
```