## 編譯 Verilog 程式
```sh
iverilog -o xor_sim tb_XOR.v XOR.v
```

## 執行模擬
```sh
vvp xor_sim
```

## 使用 GTKWave 查看波形
```sh
gtkwave xor_sim.vcd
```

## 波形圖
![波形圖](XOR_simluation.png)
