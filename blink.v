// create module
	module blink (
	input wire clk, // 50MHz input clock
	output wire[7:0] LED // 8 LEDS array
	);

// created a binary counter (32-bit)
	reg [31:0] cnt; 

initial begin

cnt <= 32'h00000000; // starting cnt with zero

end

always @(posedge clk) begin

cnt <= cnt + 1; // count up

end


assign LED[0] = cnt[23];     // LED with frequency = 50000000/ 2^23 = about 6 blinks per second
assign LED[4] = cnt[24];     // LED with frequency = about 3 blinks per second
assign LED[7] = cnt[25];     // LED with frequency = about 3 blinks in every 2 seconds.
endmodule