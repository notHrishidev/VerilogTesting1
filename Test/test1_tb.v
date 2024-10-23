//`timescale 1ns/1ps
`include "test1.v"

module HA_testbench;
    reg a, b;
    wire sum, carry;
    halfAdder add1(a, b, sum, carry);
    
    initial begin
        $dumpfile("test1.vcd");
        $dumpvars(0, HA_testbench);
        
        a = 1; b = 1; #1;
        a = 0; b = 0; #1;
        a = 0; b = 1; #1;
        a = 1; b = 0; #1;
    end
endmodule

//making changes to see if the thing changes