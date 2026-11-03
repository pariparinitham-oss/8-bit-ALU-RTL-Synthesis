module alu_tb;

reg [7:0] A, B;
reg [2:0] ALU_Sel;
wire [7:0] ALU_Out;

alu uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out)
);

initial begin
    A = 8'd10;
    B = 8'd5;

    ALU_Sel = 3'b000; #10;
    $display("Addition: %d", ALU_Out);

    ALU_Sel = 3'b001; #10;
    $display("Subtraction: %d", ALU_Out);

    ALU_Sel = 3'b010; #10;
    $display("AND: %d", ALU_Out);

    ALU_Sel = 3'b011; #10;
    $display("OR: %d", ALU_Out);

    ALU_Sel = 3'b100; #10;
    $display("XOR: %d", ALU_Out);

    ALU_Sel = 3'b101; #10;
    $display("NOT: %d", ALU_Out);

    ALU_Sel = 3'b110; #10;
    $display("Left Shift: %d", ALU_Out);

    ALU_Sel = 3'b111; #10;
    $display("Right Shift: %d", ALU_Out);

    $finish;
end

endmodule
