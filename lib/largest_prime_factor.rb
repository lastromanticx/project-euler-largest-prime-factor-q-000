# Enter your procedural solution here!
def largest_prime_factor(n)
  largest_prime = 1
  d = 2

  while n > 1
    if n % d == 0 && d > largest_prime
      largest_prime = d
    end

    while n % d == 0
      n /= d
    end

    d += 1

    if d * d > n
      if n > largest_prime
        largest_prime = n
      end
      break
    end
  end

  largest_prime
end
