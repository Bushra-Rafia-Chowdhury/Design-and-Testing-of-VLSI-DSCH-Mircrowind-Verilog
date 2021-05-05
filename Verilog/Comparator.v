//ID=17101140 mod 7 => 0 So,for every value greater than 0 the output will be 1.

module comparator(
	input x,
	input y,
        input v,
	output z 
	); 
	// z is a single bit comparator 

	assign z = (x|y|v) ;
	endmodule