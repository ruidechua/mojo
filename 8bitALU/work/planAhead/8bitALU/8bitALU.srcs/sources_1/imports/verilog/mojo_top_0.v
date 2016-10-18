/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  reg [7:0] a;
  
  reg [7:0] b;
  
  reg [5:0] alufn;
  
  reg [7:0] out;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [8-1:0] M_add_sum;
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_n;
  wire [1-1:0] M_add_v;
  reg [8-1:0] M_add_a;
  reg [8-1:0] M_add_b;
  reg [1-1:0] M_add_alufn0;
  mojo_adder_2 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn0(M_add_alufn0),
    .sum(M_add_sum),
    .z(M_add_z),
    .n(M_add_n),
    .v(M_add_v)
  );
  
  wire [8-1:0] M_comp_out;
  reg [8-1:0] M_comp_alufn;
  reg [1-1:0] M_comp_z;
  reg [1-1:0] M_comp_n;
  reg [1-1:0] M_comp_v;
  cmp8_3 comp (
    .alufn(M_comp_alufn),
    .z(M_comp_z),
    .n(M_comp_n),
    .v(M_comp_v),
    .out(M_comp_out)
  );
  
  wire [8-1:0] M_boo_boole;
  reg [4-1:0] M_boo_alufn;
  reg [8-1:0] M_boo_a;
  reg [8-1:0] M_boo_b;
  boolean_4 boo (
    .alufn(M_boo_alufn),
    .a(M_boo_a),
    .b(M_boo_b),
    .boole(M_boo_boole)
  );
  
  wire [8-1:0] M_shift_shift;
  reg [8-1:0] M_shift_a;
  reg [3-1:0] M_shift_b;
  reg [2-1:0] M_shift_alufn;
  shifter_5 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .shift(M_shift_shift)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    a[0+7-:8] = io_dip[0+0+7-:8];
    b[0+7-:8] = io_dip[8+0+7-:8];
    alufn[0+5-:6] = io_dip[16+0+5-:6];
    M_add_a = a;
    M_add_b = b;
    M_add_alufn0 = alufn[0+0-:1];
    M_comp_v = M_add_v;
    M_comp_n = M_add_n;
    M_comp_z = M_add_z;
    M_comp_alufn = alufn;
    M_boo_a = a;
    M_boo_b = b;
    M_boo_alufn = alufn[0+3-:4];
    M_shift_a = a;
    M_shift_b = b[0+2-:3];
    M_shift_alufn = alufn[0+1-:2];
    out = M_shift_shift;
    io_led[16+0+0-:1] = M_add_n;
    io_led[16+1+0-:1] = M_add_v;
    io_led[16+2+0-:1] = M_add_z;
    io_led[0+7-:8] = out;
  end
endmodule
