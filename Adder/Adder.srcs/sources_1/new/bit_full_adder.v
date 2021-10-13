`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 08:43:38 PM
// Design Name: 
// Module Name: bit-_full_adder
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


module bit_full_adder(
    input A, B, Cin,
    output S, Cout
    );
    
    assign S = (~A & ~B & C) | (~A & B & ~C) | (A & ~B & ~C) | (A & B & C);
    assign Cout = (B & C) | (A & C) | (A & B);
    
endmodule
