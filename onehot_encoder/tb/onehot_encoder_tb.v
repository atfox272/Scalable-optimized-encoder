`timescale 1ns / 1ps
module onehot_encoder_tb;
    parameter INPUT_W   = 3;
    parameter OUTPUT_W  = 2;
    reg     [INPUT_W-1:0]   i;
    wire    [OUTPUT_W-1:0]  o;
    
    onehot_encoder #(
        .INPUT_W(INPUT_W),
        .OUTPUT_W(OUTPUT_W)
    ) onehot_encoder (
        .i(i),
        .o(o)
    );
    initial begin
    
        for(int idx = 0; idx < INPUT_W; idx = idx + 1) begin
            i <= 0;
            i[idx] <= 1'b1;
            #5;
        end
    end
endmodule
