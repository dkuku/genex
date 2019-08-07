defmodule OneMax do
  use Genex

  def encoding do
    for _ <- 1..15, do: Enum.random(0..1)
  end

  def fitness_function(chromosome), do: Enum.sum(chromosome.genes)

  def terminate?(population), do: population.max_fitness == 15
end

soln = OneMax.run()