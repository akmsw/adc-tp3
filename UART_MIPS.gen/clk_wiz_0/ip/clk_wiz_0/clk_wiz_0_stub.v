// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Jul  6 17:21:21 2023
// Host        : LiweX-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Repos/fpgaUART_MIPS/UART_MIPS.gen/clk_wiz_0/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_out64MHz, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out64MHz,reset,locked,clk_in1" */;
  output clk_out64MHz;
  input reset;
  output locked;
  input clk_in1;
endmodule
