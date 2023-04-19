`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2023 02:28:52 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(t,clk,restn,q,qb);

        input t,clk,restn;
        output reg q;
        output qb;
        
        always@(posedge clk)
        begin
        if(restn)
            begin
            q <= 1'b0;
            end
        else 
            if(t)
            q <= ~q;
            else
            q <= q;
        end
        assign qb = ~q;    
                   
endmodule
