set_property PACKAGE_PIN H19 [get_ports clk_p]
create_clock -period 5.000 -name input_clk -waveform {0.000 2.500} [get_ports clk_p]
set_property PACKAGE_PIN AH31 [get_ports {led[0]}]
set_property PACKAGE_PIN AH32 [get_ports {led[1]}]
set_property PACKAGE_PIN AE30 [get_ports {led[2]}]
set_property PACKAGE_PIN AF30 [get_ports {led[3]}]
set_property PACKAGE_PIN AH28 [get_ports {led[4]}]
set_property PACKAGE_PIN AJ28 [get_ports {led[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {led[0]}]
set_property IOSTANDARD DIFF_HSTL_I [get_ports clk_p]
set_property IOSTANDARD DIFF_HSTL_I [get_ports clk_n]

set_property PACKAGE_PIN AV23 [get_ports tx]
set_property PACKAGE_PIN AK23 [get_ports rx_0]
set_property IOSTANDARD LVCMOS18 [get_ports rx_0]
set_property IOSTANDARD LVCMOS18 [get_ports tx]


set_property PACKAGE_PIN AL23 [get_ports {high_output[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {high_output[0]}]
set_property PULLUP true [get_ports tx]
set_property PULLUP true [get_ports rx]

set_property OFFCHIP_TERM NONE [get_ports tx]
set_property SLEW FAST [get_ports tx]

create_pblock uart_pb
add_cells_to_pblock [get_pblocks uart_pb] [get_cells -quiet [list gen_uart.uart_port_i/TX_i/TX_i/tx_reg_reg_TMR_0_Q_VOTER]]
resize_pblock [get_pblocks uart_pb] -add {SLICE_X48Y3:SLICE_X48Y5}
