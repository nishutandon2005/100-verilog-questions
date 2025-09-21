module xor_gate(a,b,c);
  input a,b;
  output c;
  assign c = a ^ b;
endmodule

module tb_xor_gate;
  reg a,b;
  wire c;

  xor_gate uut (.a(a), .b(b), .c(c));

  initial begin
    $display("a b | c");
    $monitor("%b %b | %b", a,b,c);
    a=0;b=0; #10;
    a=0;b=1; #10;
    a=1;b=0; #10;
    a=1;b=1; #10;
    $finish;
  end
endmodule
