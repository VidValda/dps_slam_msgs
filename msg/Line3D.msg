# Line3D — infinite 3D line landmark (4 DOF): no extent along the line is observed.
geometry_msgs/Point point        # Any point on the line
geometry_msgs/Vector3 direction  # Unit direction (sign is irrelevant)

# 4x4 row-major covariance over [dir_b1, dir_b2, offset_b1, offset_b2]: the direction
# tilt (rad) and the line offset (m) along b1, b2, the basis perpendicular to the direction:
# b1 = normalize(direction x ref), b2 = direction x b1,
# ref = +Z if |direction.z| < 0.9 else +X.
float64[16] covariance
