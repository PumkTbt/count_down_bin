# count_down_bin
cyclone ii fpga, verilog

Mô tả mạch đếm xuống nhị phân, đếm từ số 1100100(2) về 0000000(2). Xung Ck không đồng bộ, có f = 1Hz. Chân RS tích cực mức thấp, khi RS tích cực thì ngõ ra là số 1100100(2).

Phân tích:
Mạch đếm xuống nhị phân sẽ hoạt động, tức là tiến hành quá trình đếm số khi
xung Ck tích cực, ở đây ta chọ xung Ck tích cực mức cao.
- Do RS(chân reset) tích cực mức thấp, không đồng bộ với xung Ck nên : Khi mà
chân Rs tích cực, thì cho dù xung Ck tích cực hay không tích cực thì nó cũng sẽ
reset bộ đếm về giá trị ban đầu của chuỗi đếm.
- Sơ đồ khối của mạch đếm có:
+ Input : Ck, Rs
+ Output : [6 :0]Y (Đầu ra chuỗi đếm từ 1100100(2) = 100(10) về 0)

![image](https://github.com/PumkTbt/count_down_bin/assets/124877073/48cc070b-b01d-4998-971c-2f1625700cb8)

![image](https://github.com/PumkTbt/count_down_bin/assets/124877073/4c93ee3f-3d14-4ba8-aa52-f726de0ff967)

![image](https://github.com/PumkTbt/count_down_bin/assets/124877073/4b81a96a-8ec9-451e-bffa-93c3be1d06f9)

![image](https://github.com/PumkTbt/count_down_bin/assets/124877073/433c2fc2-8dfe-4c42-9bbc-8dbab31868cb)

![image](https://github.com/PumkTbt/count_down_bin/assets/124877073/863d23d3-065b-43c7-b583-fd3c277fcc25)

Từ kết quả của giản đồ xung thì ta thấy rằng, mạch đếm chỉ thực hiện đếm xuống khi mà chân Reset nó tích cực mức cao và xung ck tích cực cạnh lên.
Các trường hợp Rs mức thấp thì chuỗi đếm sẽ được reset về 100.( trường hợp thứ 2 của kết quả 2 ở trên giản đồ xung).

![image](https://github.com/PumkTbt/count_down_bin/assets/124877073/29d12371-6df3-4f33-a374-15bb8d21bde2)

Với trường hợp này khi đếm đến cuối chuỗi đếm, thì khi đó quá trình đếm sẽ được bắt đầu trở lại từ 100 trở xuống.



