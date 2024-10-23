module halfAdder (a,b,sum,carry);
    input a, b;
    output sum, carry;
    xor S (sum,a,b);
    and C (carry,a,b);
endmodule