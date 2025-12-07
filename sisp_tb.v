`timescale 1ns / 1ps
module siso_tb();
reg clk,rst,sin;
wire sout;
siso uut(clk,rst,sin,sout);
initial
begin
clk=0;
forever #5 clk= ~clk;
end
initial
begin
rst=1; sin=0; #10
rst=0;
sin=1; #10
sin=0; #10
sin=1; #10
sin=1; #10
$finish;
end
endmodule
