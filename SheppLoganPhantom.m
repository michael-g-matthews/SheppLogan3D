#{
Shepp Logan 3d Phantom
Mike Matthews
Jan 10, 2023
#}

clear all, close all, clc
#{ 

  Ellipse   x0      y0      z0       a      b     c    phi  theta    psi   rho
  -----------------------------------------------------------------------------
  A          0       0       0    0.69   0.92   0.9      0      0      0   2.0
  B          0       0       0  0.6624  0.874  0.88      0      0      0  -0.8
  C      -0.22       0   -0.25    0.41   0.16  0.21    108      0      0  -0.2
  D       0.22       0   -0.25    0.31   0.11  0.22     72      0      0  -0.2
  E          0    0.35   -0.25    0.21   0.25   0.5      0      0      0   0.2
  F          0     0.1   -0.25   0.046  0.046 0.046      0      0      0   0.2
  G      -0.08   -0.65   -0.25   0.046  0.023  0.02      0      0      0   0.1
  H       0.06   -0.65   -0.25   0.046  0.023  0.02     90      0      0   0.1
  I       0.06  -0.105   0.625   0.056   0.04   0.1     90      0      0   0.2
  J          0   0.100   0.625   0.056  0.056   0.1      0      0      0  -0.2
#}

# rotations
aboutX = [1,0,0];
aboutY = [0,1,0];
aboutZ = [0,0,1];

# ellipsoids
[Ax, Ay, Az] = ellipsoid(0,0,0,0.69,0.92,0.9);
[Bx, By, Bz] = ellipsoid(0,0,0,0.6624,0.874,0.88);
[Cx, Cy, Cz] = ellipsoid(-0.22,0,-0.25,0.41,0.16,0.21);
[Dx, Dy, Dz] = ellipsoid(0.22, 0, -0.25, -0.31, 0.11, 0.22);
[Ex, Ey, Ez] = ellipsoid(0, 0.35, -0.25, 0.21, 0.25, 0.5);
[Fx, Fy, Fz] = ellipsoid(0, 0.1, -0.25, 0.046, 0.046, 0.046);
[Gx, Gy, Gz] = ellipsoid(-0.08, -0.65, -0.25, 0.046, 0.023, 0.02);
[Hx, Hy, Hz] = ellipsoid(0.06, -0.65, -0.25, 0.046, 0.023, 0.02);
[Ix, Iy, Iz] = ellipsoid(0.06, -0.105, 0.625, 0.056, 0.04, 0.1);
[Jx, Jy, Jz] = ellipsoid(0, 0.1, 0.625, 0.056, 0.056, 0.1);


# Draw
#A = surf(Ax, Ay, Az, 'FaceAlpha', 0.01);
hold on
#B = surf(Bx, By, Bz, 'FaceAlpha', 0.02);
C = surf(Cx, Cy, Cz);
D = surf(Dx, Dy, Dz);
E = surf(Ex, Ey, Ez);
F = surf(Fx, Fy, Fz);
G = surf(Gx, Gy, Gz);
H = surf(Hx, Hy, Hz);
I = surf(Ix, Iy, Iz);
J = surf(Jx, Jy, Jz);

rotate(C, aboutZ, 108, [-0.22,0,-0.25])
rotate(D, aboutZ, 72, [0.22,0, -0.25])
rotate(H, aboutZ, 90, [0.06, -0.65, -0.25])
rotate(I, aboutZ, 90, [0.06, -0.105, 0.625])
axis equal
xlabel("x")
ylabel("y")
zlabel("z")
hold off