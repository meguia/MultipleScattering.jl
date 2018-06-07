
# Plot a vector of particles
@recipe function plot(particles::Particles)
    for particle in particles
        @series begin
            particle
        end
    end
end

# Plot the shape of a particle
@recipe function plot(particle::AbstractParticle)
    shape(particle)
end


@recipe function plot(shape::Shape)

    grid --> false
    xlab --> "x"
    ylab --> "y"
    aspect_ratio := 1.0
    label --> ""
    linecolor --> :grey

    x, y = boundary_functions(shape)

    (x, y, 0.0, 1.0)

end
