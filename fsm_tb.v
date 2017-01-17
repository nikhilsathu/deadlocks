`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:37:49 01/07/2017
// Design Name:   fsm
// Module Name:   C:/Users/sweety/Desktop/New folder/xilinx/finitestaetemachine/fsm_tb.v
// Project Name:  finitestaetemachine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fsm_tb;

	// Inputs
	reg clk;
	reg in;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.clk(clk), 
		.in(in), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		in = 0;
		reset = 0;
		#50;
		reset =1;
		#50;
		reset=0;
		#100;
		

		// Wait 100 ns for global reset to finish
		
        in = 1'b0;#100;
		  in = 1'b1;#100;
		  in = 1'b0;#100;
		  in = 1'b1;#100;
		  in = 1'b0;#100;
		  in = 1'b1;#100;
		  in = 1'b1;#100;
		  in = 1'b1;#100;
		  in = 1'b0;#100;
		  end
		// Add stimulus here
		always begin
		#50;
		clk=~clk;
		end

	
      
endmodule

