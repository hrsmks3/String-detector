transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/USER/OneDrive/Documents/ee214/LAB2/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/USER/OneDrive/Documents/ee214/LAB2/v_jtag/synthesis/v_jtag.vhd}
vcom -93 -work work {C:/Users/USER/OneDrive/Documents/ee214/LAB2/TopLevel.vhdl}
vcom -93 -work work {C:/Users/USER/OneDrive/Documents/ee214/LAB2/DUT.vhdl}
vcom -93 -work work {C:/Users/USER/OneDrive/Documents/ee214/LAB2/DETECTOR.vhd}

vcom -93 -work work {C:/Users/USER/OneDrive/Documents/ee214/LAB2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
