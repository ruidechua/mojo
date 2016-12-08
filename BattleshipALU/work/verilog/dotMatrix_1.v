/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module dotMatrix_1 (
    input clk,
    input rst,
    input [139:0] status,
    output reg [9:0] allc,
    output reg [13:0] allr
  );
  
  
  
  integer i;
  
  
  localparam ONER_row = 4'd0;
  localparam TWOR_row = 4'd1;
  localparam THREER_row = 4'd2;
  localparam FOURR_row = 4'd3;
  localparam FIVER_row = 4'd4;
  localparam ONEG_row = 4'd5;
  localparam TWOG_row = 4'd6;
  localparam THREEG_row = 4'd7;
  localparam FOURG_row = 4'd8;
  localparam FIVEG_row = 4'd9;
  
  reg [3:0] M_row_d, M_row_q = ONER_row;
  
  always @* begin
    M_row_d = M_row_q;
    
    
    case (M_row_q)
      ONER_row: begin
        allr = 1'h1;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[0+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = ONEG_row;
      end
      ONEG_row: begin
        allr = 2'h2;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[14+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = TWOR_row;
      end
      TWOR_row: begin
        allr = 3'h4;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[28+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = TWOG_row;
      end
      TWOG_row: begin
        allr = 4'h8;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[42+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = THREER_row;
      end
      THREER_row: begin
        allr = 5'h10;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[56+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = TWOG_row;
      end
      THREEG_row: begin
        allr = 6'h20;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[70+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = FOURR_row;
      end
      FOURR_row: begin
        allr = 7'h40;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[84+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = FOURG_row;
      end
      FOURG_row: begin
        allr = 8'h80;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[98+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = FIVER_row;
      end
      FIVER_row: begin
        allr = 9'h100;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[112+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = FOURG_row;
      end
      FIVEG_row: begin
        allr = 10'h200;
        for (i = 1'h0; i < 4'he; i = i + 1) begin
          if (status[98+(i)*1+0-:1] == 1'h1) begin
            allc[(i)*1+0-:1] = 1'h1;
          end else begin
            allc[(i)*1+0-:1] = 1'h0;
          end
        end
        M_row_d = ONER_row;
      end
      default: begin
        allr = 1'h1;
        allc = 1'h1;
        M_row_d = ONER_row;
      end
    endcase
  end
  
  always @(posedge clk) begin
    M_row_q <= M_row_d;
  end
  
endmodule