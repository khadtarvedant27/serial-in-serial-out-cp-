`timescale 1ns / 1ps
module siso(clk,rst,sin,sout );
input clk,sin,rst;
output sout;
reg[3:0]q;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
q<={q[2:0],sin};
end
assign sout=q[3];
endmodule
