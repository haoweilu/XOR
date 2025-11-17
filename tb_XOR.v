`timescale 1ns/1ps


module tb_XOR;

reg a , b ;
wire c ;

XOR dut (
    .a(a),
    .b(b),
    .c(c)
);

initial begin
    $dumpfile("xor_wave.vcd"); 
    $dumpvars(0, tb_XOR);
end


initial begin
    // 初始值
    a = 0 ; b = 0 ;
    #10;     // 等 10ns

    a = 0 ; b = 1 ;
    #10;

    a = 1 ; b = 0 ;
    #10;

    a = 0 ; b = 1 ;
    #10;

    a = 1 ; b = 1 ;
    #10;

    $finish; // 結束模擬
end

endmodule