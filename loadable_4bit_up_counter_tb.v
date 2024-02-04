`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2023 13:46:30
// Design Name: 
// Module Name: loadable_4bit_up_counter_tb
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


module loadable_4bit_up_counter_tb();
reg clk,rst,load;
reg [3:0]data_in;
wire [3:0]data_out;
loadable_4bit_up_counter uut (clk,rst,load,data_in,data_out);
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end
task initialize;
    {rst,load,data_in} = 6'b100000;
endtask

task load_in;
    begin
        @(negedge clk)
        load = 1'b1;
        data_in = 4'b1000;
        @(negedge clk)
        load = 1'b0;
    end
endtask 

task reset;
    begin
    @(negedge clk)
    rst = 1'b1;
    @(negedge clk)
    rst = 1'b0;
    end
endtask

initial begin
    initialize;
    reset;
    load_in;
end
 
endmodule
