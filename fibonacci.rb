def fibs(n)
  sequence = n == 0? [n] : [0, 1]
  (n - 1).times { sequence << sequence[-2] + sequence[-1] }
  sequence
end

def fibs_rec(n, sequence = [0, 1])
  return [0] if n == 0
  return sequence if n == 1
  sequence << sequence[-2] + sequence[-1]
  fibs_rec(n - 1, sequence)
end