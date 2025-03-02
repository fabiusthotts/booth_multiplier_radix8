`timescale 1ns / 1ns

module booths_encoder_tb;
    
    reg signed [15:0] A;
    reg signed [15:0] B;
    wire signed [31:0] product;

    booths_encoder radix8(
        .A(A),
        .B(B),
      	.product(product)
    );

    initial begin
        
      	$display("Time\t A\t B\t Product");

        A = -16'd32767;
        B = -16'd32768;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

        A = 16'd32767;
        B = -16'd32768;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

        A = -16'd32768;
        B = 16'd32767;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

        A = 16'd32767;
        B = 16'd32767;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

	A = -16'd32768;
        B = -16'd32768;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

	A = 16'd0;
        B = -16'd50;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

	A = -16'd1003;
        B = -16'd5790;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));

	A = -16'd1;
        B = 16'd9930;
      	#10
      	$display("%0t\t %d\t %d\t %d", $time, $signed(A), $signed(B), $signed(product));
      	
        $finish;
      
    end

endmodule
