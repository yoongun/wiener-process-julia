using Plots
using Random


Random.seed!(2020)
n = 50
trace = [[rand(50)]; [rand(50)]; [rand(50)]]

# trace = [[1 2 3]; [1 2 3]; [1 2 3]]

display(plot(trace[1, :], trace[2, :], trace[3, :], seriestype=:scatter, markersize=2))
readline()

