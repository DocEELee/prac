// Toggle Flip Flop
module tff (q, clk, reset);

    output q;
    input clk, reset;

    always @{posedge reset or posedge clk} begin
        if (reset) begin
            q <= 1'b0;
        end else begin
            q <= ~q;
        end

    end
endmodule