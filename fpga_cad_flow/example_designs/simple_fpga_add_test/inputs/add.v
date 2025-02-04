module add(IN, OUT, clk);
	// FPGA IOs (for standard test IO harness)
    input [127:0] IN;
	output reg [127:0] OUT;
    input clk;

    // Test circut IO wires
    wire [7:0] A, B;
	wire [7:0] O;
    reg R0, R0_1;

    // Assign to FPGA IO
    assign A = IN[7:0];
    assign B = IN[15:8];
    always @(*) begin
        //OUT = 0;
        OUT[39:32] = O;
        OUT[0] = R0_1;
        OUT[1] = R0;
    end
    
	always @(posedge clk) begin
			R0_1 <= A[0];
            R0 <= R0_1;
	end

    assign O = A + B;

endmodule




