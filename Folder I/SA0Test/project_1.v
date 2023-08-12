`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:05 11/05/2021 
// Design Name: 
// Module Name:    project_1 
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
module bcd_ex3(input [3:0]din,q,output reg[3:0]dout,SA0in,SA0out);
	integer i;
	//reg[3;0]q;
	//reg SA0 = 4'b0;
always @(din)
	begin
	case(din)
	4'd0: dout = 4'd3;
	4'd1: dout = 4'd4;
	4'd2: dout = 4'd5;
	4'd3: dout = 4'd6;
	4'd4: dout = 4'd7;
	4'd5: dout = 4'd8;
	4'd6: dout = 4'd9;
	4'd7: dout = 4'd10;	
	4'd8: dout = 4'd11;
	4'd9: dout = 4'd12;
	endcase
	

	//assign q = din + 4'd3;
	SA0in = dout - q;
	SA0out = 4'd0;
	for(i=0;i<4;i=i+1)
	if((SA0in[i]==1'b1) && (din[i] == 1'b0))
		SA0out[i] = 1'b1;
	for(i=0;i<4;i=i+1)
	if((SA0in[i]==1'b1) && (din[i] == 1'b0))
	SA0in[i] = 1'b0;
	end
endmodule
	
module bcd_ex3_tb();
	reg [3:0]din,q_tb;
	wire [3:0]SA0in_tb;
	wire [3:0]SA0out_tb;
	wire [3:0]dout_tb;
	bcd_ex3 test(din,q_tb,dout_tb,SA0in_tb,SA0out_tb);
initial 
begin
//value of q is the output given by the BCD to excess converter.
din = 4'b0000;q_tb=din;
#200 din = 4'b0011;q_tb=din;
#200 din = 4'b0100;q_tb=4'b0110;
#200 din = 4'b1001;q_tb=4'b1011;
#200 din = 4'b0011;q_tb=4'b0100;


end
endmodule