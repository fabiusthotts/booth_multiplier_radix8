`timescale 1ns / 1ns

module booths_encoder_tb;
    
    reg signed [15:0] A;
    reg signed [15:0] B;
    wire signed [33:0] pp0, pp1, pp2, pp3, pp4, pp5;

    booths_encoder radix8(
        .A(A),
        .B(B),
      .pp0(pp0),
      .pp1(pp1),
      .pp2(pp2),
      .pp3(pp3),
      .pp4(pp4),
      .pp5(pp5)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0, booths_encoder_tb);
      	
        
      $display("Time\t A\t B\t pp0\t pp1\t pp2\t pp3\t pp4\t pp5\t");

      A = -16'd32767;
      B = -16'd32768;
      #10
      $display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

        A = 16'd32767;
        B = -16'd32768;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

        A = -16'd32768;
        B = 16'd32767;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

        A = 16'd32767;
        B = 16'd32767;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

	A = -16'd32768;
        B = -16'd32768;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

	A = 16'd0;
        B = -16'd50;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

	A = -16'd1003;
        B = -16'd5790;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));

	A = -16'd1;
        B = 16'd9930;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));
      
      	A = 16'd10;
        B = 16'd5;
      	#10
      	$display("%0t\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t %d\t", $time, $signed(A), $signed(B), $signed(pp0), $signed(pp1), $signed(pp2), $signed(pp3), $signed(pp4), $signed(pp5));
      	
      	#10
        $finish;
      	
    end
endmodule
