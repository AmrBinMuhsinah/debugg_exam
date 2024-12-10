`timescale 1ns / 1ps

module tb_counter_4bit();

logic [3:0]load_data;
logic load;
logic clk;
logic reset_n;
logic [3:0]count;

counter_4bit dut (.clk(clk),
 .reset_n(reset_n),
 .load(load),
 .load_data(load_data),
 . count(count));
 
always begin 

#5 clk=~clk;

end 

initial begin 

clk=0;reset_n=0;load=0;

#5

reset_n=1;
#10
reset_n=0;
#10
reset_n=1;
load=1;
load_data=4'b0010;
#10
load=0;
load_data=4'b0110;
#10
load=1;
load_data=4'b1010;
#10
load=1;
load_data=4'b1110;
#10
load=1;
load_data=4'b1011;

$finish;
end 



endmodule
