`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:20 01/07/2017 
// Design Name: 
// Module Name:    fsm 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fsm(input clk,in, reset, output reg out);
reg [1:0]state;
//parameter s0=00, s1=01,s2=10, s3=11;
//state = 2'b00;
always@(posedge clk or posedge reset) begin
if(reset)
begin
state=2'b00;
out=1'b0;
end
else 
case(state)
2'b00:if(in)
	begin
	state=2'b01;
	out = 1'b1;
	end
	else
	begin
	state=2'b00;
	out=1'b0;
	end
2'b01:if(in)
		begin
		state=2'b00;
		out=1'b0;
		end
		else
		begin
		state=2'b10;
		out=1'b0;
		end
2'b10:if(in)
		begin
		state=2'b11;
		out=1'b1;
		end
		else
		begin
		state=2'b11;
		out=1'b1;
		end		
2'b11:if(in)
		begin
		state=2'b01;
		out=1'b1;
		end
		else
		begin
		state=2'b11;
		out=1'b1;
		end
endcase
end
/**always@(state) begin
case(state)
00: out=1'b0;
01: out=1'b1;
10: out=1'b1;
11: out=1'b0;
//default: out<=1'b0;
endcase
end
*/
endmodule
