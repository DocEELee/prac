`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/13 16:59:47
// Design Name: 
// Module Name: tb_top
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


module test;

    reg clk, reset;
    wire [3:0] q;

    // Instantiate out desing 
    ripple_carry_counter rcc (q, clk, reset);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1, test);

        clk = 1'b0;
        reset = 1'b1;
        #10 reset = 1'b0;

        #200;
        reset = 1'b1;
        #10 reset = 1'b0;

        #50;
        $finish;
        
    end

    always #5 clk = ~clk;


endmodule
