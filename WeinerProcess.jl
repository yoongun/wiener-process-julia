using Plots
using Random, Distributions

Random.seed!(2020)

d = Normal()
trace_x = Vector{Float64}()
trace_y = Vector{Float64}()
trace_z = Vector{Float64}()

# Initial position
append!(trace_x, 0)
append!(trace_y, 0)
append!(trace_z, 0)

anim = @animate for i=1:1000
    dx, dy, dz = rand(d, 3)
    append!(trace_x, trace_x[i] + dx)
    append!(trace_y, trace_y[i] + dy)
    append!(trace_z, trace_z[i] + dz)

    plot(trace_x, trace_y, trace_z, markersize=2)
end

gif(anim, "./fps15.gif", fps=15)

