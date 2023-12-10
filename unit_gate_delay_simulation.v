`timescale 1ns/1ns
module fulladder(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  xor #1
    g1(w1, a, b),
    g2(s, w1, cin);
  and #1
    g3(w2, cin, b),
    g4(w3, cin, a),
    g5(w4, a, b);
  or #1
    g6(cout, w2, w3, w4);
endmodule

module _2to1MUX(I0,S,I1,Y);
  input I0,S,I1;
  output Y;
  and #1
    g1(w1,I1,S),
    g2(w3,I0,w2);
  not #1
    g3(w2,S);
  or #1
    g4(Y,w1,w3);
endmodule

module _32BitAdder(x, y, c_in, s, v);
  input [31:0]x,y;  // First number Second number
  output [31:0]s;   // Output
  input c_in;       // Sub in compliment
  output v;         // Overflow detection
  wire [31:0]carry,compliment,b_bus; // Buses
  wire c_out; // Wire to connect O-D

  not #1  // I0 of MUX ( invert )
    muxinvinput0(compliment[0],y[0]),
    muxinvinput1(compliment[1],y[1]),
    muxinvinput2(compliment[2],y[2]),
    muxinvinput3(compliment[3],y[3]),
    muxinvinput4(compliment[4],y[4]),
    muxinvinput5(compliment[5],y[5]),
    muxinvinput6(compliment[6],y[6]),
    muxinvinput7(compliment[7],y[7]),
    muxinvinput8(compliment[8],y[8]),
    muxinvinput9(compliment[9],y[9]),
    muxinvinput10(compliment[10],y[10]),
    muxinvinput11(compliment[11],y[11]),
    muxinvinput12(compliment[12],y[12]),
    muxinvinput13(compliment[13],y[13]),
    muxinvinput14(compliment[14],y[14]),
    muxinvinput15(compliment[15],y[15]),
    muxinvinput16(compliment[16],y[16]),
    muxinvinput17(compliment[17],y[17]),
    muxinvinput18(compliment[18],y[18]),
    muxinvinput19(compliment[19],y[19]),
    muxinvinput20(compliment[20],y[20]),
    muxinvinput21(compliment[21],y[21]),
    muxinvinput22(compliment[22],y[22]),
    muxinvinput23(compliment[23],y[23]),
    muxinvinput24(compliment[24],y[24]),
    muxinvinput25(compliment[25],y[25]),
    muxinvinput26(compliment[26],y[26]),
    muxinvinput27(compliment[27],y[27]),
    muxinvinput28(compliment[28],y[28]),
    muxinvinput29(compliment[29],y[29]),
    muxinvinput30(compliment[30],y[30]),
    muxinvinput31(compliment[31],y[31]);

  // MUXs (I0,S,I1,Y)
  _2to1MUX MUX0(y[0], c_in, compliment[0], b_bus[0]);
  _2to1MUX MUX1(y[1], c_in, compliment[1], b_bus[1]);
  _2to1MUX MUX2(y[2], c_in, compliment[2], b_bus[2]);
  _2to1MUX MUX3(y[3], c_in, compliment[3], b_bus[3]);
  _2to1MUX MUX4(y[4], c_in, compliment[4], b_bus[4]);
  _2to1MUX MUX5(y[5], c_in, compliment[5], b_bus[5]);
  _2to1MUX MUX6(y[6], c_in, compliment[6], b_bus[6]);
  _2to1MUX MUX7(y[7], c_in, compliment[7], b_bus[7]);
  _2to1MUX MUX8(y[8], c_in, compliment[8], b_bus[8]);
  _2to1MUX MUX9(y[9], c_in, compliment[9], b_bus[9]);
  _2to1MUX MUX10(y[10], c_in, compliment[10], b_bus[10]);
  _2to1MUX MUX11(y[11], c_in, compliment[11], b_bus[11]);
  _2to1MUX MUX12(y[12], c_in, compliment[12], b_bus[12]);
  _2to1MUX MUX13(y[13], c_in, compliment[13], b_bus[13]);
  _2to1MUX MUX14(y[14], c_in, compliment[14], b_bus[14]);
  _2to1MUX MUX15(y[15], c_in, compliment[15], b_bus[15]);
  _2to1MUX MUX16(y[16], c_in, compliment[16], b_bus[16]);
  _2to1MUX MUX17(y[17], c_in, compliment[17], b_bus[17]);
  _2to1MUX MUX18(y[18], c_in, compliment[18], b_bus[18]);
  _2to1MUX MUX19(y[19], c_in, compliment[19], b_bus[19]);
  _2to1MUX MUX20(y[20], c_in, compliment[20], b_bus[20]);
  _2to1MUX MUX21(y[21], c_in, compliment[21], b_bus[21]);
  _2to1MUX MUX22(y[22], c_in, compliment[22], b_bus[22]);
  _2to1MUX MUX23(y[23], c_in, compliment[23], b_bus[23]);
  _2to1MUX MUX24(y[24], c_in, compliment[24], b_bus[24]);
  _2to1MUX MUX25(y[25], c_in, compliment[25], b_bus[25]);
  _2to1MUX MUX26(y[26], c_in, compliment[26], b_bus[26]);
  _2to1MUX MUX27(y[27], c_in, compliment[27], b_bus[27]);
  _2to1MUX MUX28(y[28], c_in, compliment[28], b_bus[28]);
  _2to1MUX MUX29(y[29], c_in, compliment[29], b_bus[29]);
  _2to1MUX MUX30(y[30], c_in, compliment[30], b_bus[30]);
  _2to1MUX MUX31(y[31], c_in, compliment[31], b_bus[31]);

  // ADDERS (a,b,cin,s,cout)
  fulladder A1(x[0], b_bus[0], c_in, s[0], carry[0]);
  fulladder A2(x[1], b_bus[1], carry[0], s[1], carry[1]);
  fulladder A3(x[2], b_bus[2], carry[1], s[2], carry[2]);
  fulladder A4(x[3], b_bus[3], carry[2], s[3], carry[3]);
  fulladder A5(x[4], b_bus[4], carry[3], s[4], carry[4]);
  fulladder A6(x[5], b_bus[5], carry[4], s[5], carry[5]);
  fulladder A7(x[6], b_bus[6], carry[5], s[6], carry[6]);
  fulladder A8(x[7], b_bus[7], carry[6], s[7], carry[7]);
  fulladder A9(x[8], b_bus[8], carry[7], s[8], carry[8]);
  fulladder A10(x[9], b_bus[9], carry[8], s[9], carry[9]);
  fulladder A11(x[10], b_bus[10], carry[9], s[10], carry[10]);
  fulladder A12(x[11], b_bus[11], carry[10], s[11], carry[11]);
  fulladder A13(x[12], b_bus[12], carry[11], s[12], carry[12]);
  fulladder A14(x[13], b_bus[13], carry[12], s[13], carry[13]);
  fulladder A15(x[14], b_bus[14], carry[13], s[14], carry[14]);
  fulladder A16(x[15], b_bus[15], carry[14], s[15], carry[15]);
  fulladder A17(x[16], b_bus[16], carry[15], s[16], carry[16]);
  fulladder A18(x[17], b_bus[17], carry[16], s[17], carry[17]);
  fulladder A19(x[18], b_bus[18], carry[17], s[18], carry[18]);
  fulladder A20(x[19], b_bus[19], carry[18], s[19], carry[19]);
  fulladder A21(x[20], b_bus[20], carry[19], s[20], carry[20]);
  fulladder A22(x[21], b_bus[21], carry[20], s[21], carry[21]);
  fulladder A23(x[22], b_bus[22], carry[21], s[22], carry[22]);
  fulladder A24(x[23], b_bus[23], carry[22], s[23], carry[23]);
  fulladder A25(x[24], b_bus[24], carry[23], s[24], carry[24]);
  fulladder A26(x[25], b_bus[25], carry[24], s[25], carry[25]);
  fulladder A27(x[26], b_bus[26], carry[25], s[26], carry[26]);
  fulladder A28(x[27], b_bus[27], carry[26], s[27], carry[27]);
  fulladder A29(x[28], b_bus[28], carry[27], s[28], carry[28]);
  fulladder A30(x[29], b_bus[29], carry[28], s[29], carry[29]);
  fulladder A31(x[30], b_bus[30], carry[29], s[30], carry[30]);
  fulladder A32(x[31], b_bus[31], carry[30], s[31], c_out);

  xor #1 // Overflow detection gate
    g33(v, carry[30], c_out);
endmodule

// SIMULATE THE CIRCUIT
module tb_fourBitAdder;
    // Define my vars
    reg [31:0] a, b;
    reg cin;
    wire [31:0] s;
    wire v;
    integer i;
    // Connect i/o ports with signals
    _32BitAdder ut (
        .x(a),
        .y(b),
        .c_in(cin),
        .s(s),
        .v(v)
    );
    // Verilog simulation always run on the initial block
    initial begin
        $monitor($time,,"Test Case: a=%d, b=%d, cin=%b, sum=%b, v=%b", a, b, cin, s, v);
        #0 a = 0; b = 0; cin = 0;
        // Randomize inputs and simulate for 5000 iterations with 10ns step
        for (i = 0; i < 5000; i = i + 1) begin
            #100;
            a = $random;
            b = $random;
            cin = $random;
        end
    end
endmodule