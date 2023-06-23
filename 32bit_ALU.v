module alu(
    input clk,
    input [31:0] a,
    input [31:0] b,
    input cin,
    input [3:0] op_sel,
    output reg [31:0] aluout,
    output reg cout
    );
      always @(posedge clk)
   begin
   case(op_sel)
   4'b0000: {cout, aluout} <= a+b;
   4'b0001: {cout, aluout} <= a-b;
   4'b0010: {cout, aluout} <= a*b;
   4'b0011: {cout, aluout} <= a/b;
   4'b0100: {cout, aluout} <= a+a;
   4'b0101: {cout, aluout} <= a+1;
   4'b0110: {cout, aluout} <= a-1;
   4'b0111: {cout, aluout} <= b+4'b1010;
   4'b1000: {cout, aluout} <= a&&b;
   4'b1001: {cout, aluout} <= a||b;
   4'b1010: {cout, aluout} <= ~a;
   4'b1011: {cout, aluout} <= a^b;
   4'b1100: {cout, aluout} <= ~(a^b);
   4'b1101: {cout, aluout} <= ~(a&&b);
   4'b1110: {cout, aluout} <= ~(a||b);
   4'b1111: {cout, aluout} <= a;
   default: {cout, aluout} <= 4'b0;
   endcase
end
endmodule
