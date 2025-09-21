module not_gate(a,c);
  input a;
  output c;
  assign c = ~a;
endmodule

module tb_not_gate;
  reg a;
  wire c;

  not_gate uut (.a(a), .c(c));

  initial begin
    $display("a | c");
    $monitor("%b | %b", a,c);
    a=0; #10;
    a=1; #10;
    $finish;
  end
endmodule
