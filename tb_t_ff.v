`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 02:42:14 PM
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff;

        reg t,clk,restn;
        wire q,qb;
        
        t_ff dut(.t(t),.clk(clk),.restn(restn),.q(q),.qb(qb));
        
        initial 
        begin
        t = 0;
        clk = 0;
        restn = 1;
        end
        
        always #1 clk = ~clk;
        always #2 t = ~t;
        initial #10 restn = 0;
        initial #100
        
        $finish;
               
endmodule
