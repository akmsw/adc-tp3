`timescale 1ns / 1ps

module tb_alu;
    localparam BUS_OP_SIZE = 6;
    localparam BUS_SIZE = 8;   
    localparam BUS_BIT_ENABLE = 3;
    localparam I_CLK = 1'b0;
    localparam I_EN = 3'b000;
    localparam I_DATA_A = 8'hFF; // 255 representado en hexa de N bits    
    localparam I_DATA_B = 8'h02; // 2 representado en hexa de N bits    
    localparam I_OPERATION = 6'h0; // operaci?n 0 representada en un hexa de M bits
    localparam OP_ADD = 6'b100000;
    localparam OP_SUB = 6'b100010;
    localparam OP_AND = 6'b100100;
    localparam OP_OR = 6'b100101;
    localparam OP_XOR = 6'b100110;
    localparam OP_SRA = 6'b000011;
    localparam OP_SRL = 6'b000010;
    localparam OP_NOR = 6'b100111;
    //Inputs
    reg i_clk;
    reg i_reset;
    reg[BUS_BIT_ENABLE -1 : 0] i_en;
    reg[BUS_SIZE - 1 :0] i_switch;
    
    //Outputs
    wire[BUS_SIZE - 1 : 0] o_led;
    wire o_carry_bit;
    wire o_zero_bit;

    // Verilog code for ALU
    alu_top test_unit(
            i_clk,
            i_reset,
            i_en,
            i_switch,  // ALU N-bit Inputs                 
            o_led, // ALU 8-bit Output
            o_carry_bit, // Carry Out Flag,
            o_zero_bit // Zero Out Flag
        );
    initial begin
        i_clk = I_CLK;
        i_reset = 1;
        #5
        i_reset = 0;
        i_en = I_EN;
        i_switch = I_DATA_A; // 255 representado en hexa de N bits
        #5
        i_en = 2'd0;
        #5
        i_en = 2'd1;
        i_switch = I_DATA_B; // 2 representado en hexa de N bits;
        #5
        i_en = 2'd2;
        i_switch = I_OPERATION; // operaci?n 0 representada en un hexa de M bits
        #5
        i_switch = OP_ADD; // Addition
        #10;
        i_switch = OP_SUB; // Subtraction
        #10;
        i_switch = OP_AND; //  Logical and 
        #10;
        i_switch = OP_OR; //  Logical or
        #10;
        i_switch = OP_XOR; //  Logical xor  
        #10;
        i_switch = OP_SRA; // SRA 
        #10;
        i_switch = OP_SRL; // SRL
        #10;
        i_switch = OP_NOR; // Logical nor
        #10
        $finish;
    end
    
    always begin
        #1
        i_clk = ~i_clk;
    end
endmodule