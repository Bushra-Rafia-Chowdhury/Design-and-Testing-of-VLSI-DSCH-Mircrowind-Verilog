// testbench for comparator module
`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg x;
	reg y;
	reg v;
	// Outputs
	wire z;
	// Instantiate the Unit Under Test (UUT)
	comparator uut (
		.x(x), 
		.y(y),
		.v(v), 
		.z(z)
	);
 
	initial begin
	// Initialize Inputs
	x = 0;
	y = 0;
	v = 0;
 
	#20 v = 1;
	#20 y = 1;
	v = 0;
	#20 v = 1;	
	#20 x = 1;
	y=0;
	v=0;
	#20 v = 1;
	#20 y=1;
	v=0;
	#20 v=1;
	#40;
    end  
 
		initial begin
		 $monitor("x=%d,y=%d,v=%d,z=%d \n",x,y,v,z);
		 end
 
endmodule