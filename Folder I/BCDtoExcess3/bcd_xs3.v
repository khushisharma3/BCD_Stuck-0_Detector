`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:21 12/19/2021 
// Design Name: 
// Module Name:    bcd_xs3 
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
module bcd_xs3(
    input a,
    input b,
    input c,
    input d,
    output w,
    output x,
    output y,
    output z
    );

assign w = (a | (b & c) | (b & d));
assign x = (((~b) & c) | ((~b) & d) | (b & (~c) & (~d)));
assign y = ((c & d) | ((~c) & (~d)));
assign z = ~d;

endmodule
