`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2025 13:37:24
// Design Name: 
// Module Name: BCD_7Segment
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


module BCD_7Segment(output reg a,b,c,d,e,f,g, input [3:0]B);

    //Logic: Common Anode 7 Segment Display
    always @(*) begin
        case(B)
            4'b0000: {a,b,c,d,e,f,g} = 7'b0000001;
            4'b0001: {a,b,c,d,e,f,g} = 7'b1001111;
            4'b0010: {a,b,c,d,e,f,g} = 7'b0010010;
            4'b0011: {a,b,c,d,e,f,g} = 7'b0000110;
            4'b0100: {a,b,c,d,e,f,g} = 7'b1001100;
            4'b0101: {a,b,c,d,e,f,g} = 7'b0100100;
            4'b0110: {a,b,c,d,e,f,g} = 7'b0100000;
            4'b0111: {a,b,c,d,e,f,g} = 7'b0001111;
            4'b1000: {a,b,c,d,e,f,g} = 7'b0000000;
            4'b1001: {a,b,c,d,e,f,g} = 7'b0000100;
            default: {a,b,c,d,e,f,g} = 7'b1111111;
        endcase
    end
            
endmodule 
