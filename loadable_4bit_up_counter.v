`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2023 13:41:04
// Design Name: 
// Module Name: loadable_4bit_up_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module loadable_4bit_up_counter(clk,rst,load,data_in,data_out);
input clk,rst,load;
input [3:0]data_in;
output reg [3:0]data_out;
always @(posedge clk)
    begin
    if (rst)
        data_out <= 4'b0000;
    else if (load)
        data_out <= data_in;
    else
        data_out <= data_out + 4'b0001;
    end
endmodule
