`timescale 1ns / 1ps

module fa(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    assign s= a^b^cin;
    assign cout = a&b | cin&(a^b);
endmodule


module array_multiplier_8_bits(
a,b,temp, clk , rst
    );
    input [7:0] a;
    input [7:0] b;
    input clk,rst;
    output [14:0]temp;
 // reg  [14:0]out;
    wire s[55:0], c[55:0];
   
  // always @(posedge clk) begin
  //  if (rst) 
   //out<=0;
  //  else 
  //out<=out;
  //  end
      // assign temp=out;
    assign temp[0]= (a[0]&b[0]);
    fa  fa1((a[1]&b[0]),(b[1]&a[0]),0,s[0],c[0]);
    fa  fa2((a[2]&b[0]),(b[1]&a[1]),c[0],s[1],c[1]);
    fa fa3((a[3]&b[0]),(b[1]&a[2]),c[1],s[2],c[2]);
    fa  fa4((a[4]&b[0]),(b[1]&a[3]),c[2],s[3],c[3]);
    fa fa5((a[5]&b[0]),(b[1]&a[4]),c[3],s[4],c[4]);
    fa fa6((a[6]&b[0]),(b[1]&a[5]),c[4],s[5],c[5]);
    fa fa7((a[7]&b[0]),(b[1]&a[6]),c[5],s[6],c[6]); 
    fa fa8(0,(b[1]&a[7]),c[6],s[7],c[7]);
    fa  fa9(s[1],(b[2]&a[0]),0,s[8],c[8]);
    fa fa10(s[2],(b[2]&a[1]),c[8],s[9],c[9]);
    fa fa11(s[3],(b[2]&a[2]),c[9],s[10],c[10]);
    fa fa12(s[4],(b[2]&a[3]),c[10],s[11],c[11]);
    fa fa13(s[5],(b[2]&a[4]),c[11],s[12],c[12]);
    fa fa14(s[6],(b[2]&a[5]),c[12],s[13],c[13]);
    fa fa15(s[7],(b[2]&a[6]),c[13],s[14],c[14]);
    fa fa16(c[7],(b[2]&a[7]),c[14],s[15],c[15]);
    fa fa17(s[9],(b[3]&a[0]),0,s[16],c[16]);
    fa fa18(s[10],(b[3]&a[1]),c[16],s[17],c[17]);
    fa fa19(s[11],(b[3]&a[2]),c[17],s[18],c[18]);
    fa fa20(s[12],(b[3]&a[3]),c[18],s[19],c[19]);
    fa fa21(s[13],(b[3]&a[4]),c[19],s[20],c[20]);
    fa fa22(s[14],(b[3]&a[5]),c[20],s[21],c[21]);
    fa fa23(s[15],(b[3]&a[6]),c[21],s[22],c[22]);
    fa fa24(c[15],(b[3]&a[7]),c[22],s[23],c[23]);     
    fa fa25(s[17],(b[4]&a[0]),0,s[24],c[24]);
    fa fa26(s[18],(b[4]&a[1]),c[24],s[25],c[25]);
    fa fa27(s[19],(b[4]&a[2]),c[25],s[26],c[26]);
    fa fa28(s[20],(b[4]&a[3]),c[26],s[27],c[27]);    
    fa fa29(s[21],(b[4]&a[4]),c[27],s[28],c[28]);
    fa fa30(s[22],(b[4]&a[5]),c[28],s[29],c[29]);
    fa fa31(s[23],(b[4]&a[6]),c[29],s[30],c[30]);
    fa fa32(c[23],(b[4]&a[7]),c[30],s[31],c[31]);
    fa fa33(s[25],(b[5]&a[0]),0,s[32],c[32]);
    fa fa34(s[26],(b[5]&a[1]),c[32],s[33],c[33]);
    fa fa35(s[27],(b[5]&a[2]),c[33],s[34],c[34]);
    fa fa36(s[28],(b[5]&a[3]),c[34],s[35],c[35]);
    fa fa37(s[29],(b[5]&a[4]),c[35],s[36],c[36]);
    fa fa38(s[30],(b[5]&a[5]),c[36],s[37],c[37]);
    fa fa39(s[31],(b[5]&a[6]),c[37],s[38],c[38]);
    fa fa40(c[31],(b[5]&a[7]),c[38],s[39],c[39]);
    fa fa41(s[33],(b[6]&a[0]),0,s[40],c[40]);
    fa fa42(s[34],(b[6]&a[1]),c[40],s[41],c[41]);
    fa fa43(s[35],(b[6]&a[2]),c[41],s[42],c[42]);
    fa fa44(s[36],(b[6]&a[3]),c[42],s[43],c[43]);
    fa fa45(s[37],(b[6]&a[4]),c[43],s[44],c[44]);
    fa fa46(s[38],(b[6]&a[5]),c[44],s[45],c[45]);
    fa fa47(s[39],(b[6]&a[6]),c[45],s[46],c[46]);
    fa fa48(c[39],(b[6]&a[7]),c[46],s[47],c[47]);
    fa fa49(s[41],(b[7]&a[0]),0,s[48],c[48]);
    fa fa50(s[42],(b[7]&a[1]),c[48],s[49],c[49]);
    fa fa51(s[43],(b[7]&a[2]),c[49],s[50],c[50]);
    fa fa52(s[44],(b[7]&a[3]),c[50],s[51],c[51]);
    fa fa53(s[45],(b[7]&a[4]),c[51],s[52],c[52]);
    fa fa54(s[46],(b[7]&a[5]),c[52],s[53],c[53]);
    fa fa55(s[47],(b[7]&a[6]),c[53],s[54],c[54]);
    fa fa56(c[47],(b[7]&a[7]),c[54],s[55],c[55]);
     
    assign  temp[1]= s[1];
   assign   temp[2]= s[8];
     assign temp[3]=s[16];
     assign temp[4]=s[24];
   assign   temp[5]=s[32];
   assign   temp[6]=s[40];
  assign    temp[7]=s[48];
  assign    temp[8]=s[49];
    assign  temp[9]=s[50];
    assign  temp[10]=s[51];
    assign  temp[11]=s[52];
    assign  temp[12]=s[53];
     assign temp[13]=s[54];
     assign temp[14]=s[55];
     
    
  
endmodule
