`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2021 08:52:24 PM
// Design Name: 
// Module Name: top-level
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


module top_level(
    input [31:0] Input,
    output [31:0] Output
    );
   
    wire [16:0] carry;
    
    bit_full_adder bit_full_adder_0(Input[0], Input[1], 0,           Output[0], carry[1]);
    bit_full_adder bit_full_adder_1(Input[2], Input[3], carry[1],    Output[1], carry[2]);
    bit_full_adder bit_full_adder_2(Input[4], Input[5], carry[2],    Output[2], carry[3]);
    bit_full_adder bit_full_adder_3(Input[6], Input[7], carry[3],    Output[3], carry[4]);
    
    bit_full_adder bit_full_adder_0(Input[8],  Input[9],  carry[4],  Output[4], carry[5]);
    bit_full_adder bit_full_adder_1(Input[10], Input[11], carry[5],  Output[5], carry[6]);
    bit_full_adder bit_full_adder_2(Input[12], Input[13], carry[6],  Output[6], carry[7]);
    bit_full_adder bit_full_adder_3(Input[14], Input[15], carry[7],  Output[7], carry[8]);
    
    bit_full_adder bit_full_adder_0(Input[16], Input[17], carry[8],  Output[8], carry[9]);
    bit_full_adder bit_full_adder_1(Input[18], Input[19], carry[9],  Output[9], carry[10]);
    bit_full_adder bit_full_adder_2(Input[20], Input[21], carry[10], Output[10], carry[11]);
    bit_full_adder bit_full_adder_3(Input[22], Input[23], carry[11], Output[11], carry[12]);
    
    bit_full_adder bit_full_adder_0(Input[24], Input[25], carry[12], Output[12], carry[13]);
    bit_full_adder bit_full_adder_1(Input[26], Input[27], carry[13], Output[13], carry[14]);
    bit_full_adder bit_full_adder_2(Input[28], Input[29], carry[14], Output[14], carry[15]);
    bit_full_adder bit_full_adder_3(Input[30], Input[31], carry[15], Output[15], carry[16]);
        
endmodule
