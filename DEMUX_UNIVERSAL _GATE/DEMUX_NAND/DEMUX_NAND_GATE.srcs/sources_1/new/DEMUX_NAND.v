`timescale 1ns / 1ps
module DEMUX_NAND(
input wire S1,S0,
input wire I,
output reg nand_gate,
output reg [3:0] Y
);
integer i;
always @(*) begin
Y = 4'b0000;
nand_gate = 1'b0;
for(i=0;i<4;i=i+1) begin  
     if({S1,S0} == i) begin
         Y[i] = I;
       end
     if(i != 3) begin
          nand_gate = nand_gate | Y[i];
      end
end
end
endmodule

