2D ASCII Grid Velocity Model File (.mdl)
The first row in the grid model is the file header with the following information:
401 201 2.500 2.000 0.000 0.000 1
These are: nx, nz, dx, dz, x0, z0, iunit, where iunit=1: meter; =2: feet.
After the header line, the velocity grid is given as:
do j=1, nz
	do i=1, nx
		write(*,1)(vel(i,j))
	end do
end do
1 format(6(e12.5,1x))
