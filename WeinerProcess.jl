using Plots
using Random, Distributions

Random.seed!(2020)

d = Normal()
trace = [Vector{Float64}; Vector{Float64}, Vector{Float64}]

# Initial position
append!(trace[1], 0)
append!(trace[2], 0)
append!(trace[3], 0)

anim = @animate for i=1:1000
    dx, dy, dz = rand(d, 3)
    plot(trace[1, :], trace[2, :], trace[3, :], seriestype=:scatter, markersize=2)
end

