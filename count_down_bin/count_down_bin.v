module Cau_3(rs,ck,y);
input ck,rs;
output [6:0]y;
reg [6:0]y;
always @(posedge ck or negedge rs )
begin
if (rs == 0) y <= 7'b1100100;
else
	begin
		y <= y - 1'b1;
		if (y == 0)
			y <= 7'b1100100;
	end
end
endmodule