#*****************************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# mb_prj.tcl: Tcl script for re-creating project 'mb'
#
# Generated by Vivado on Mon Feb 22 17:56:03 -0700 2021
# IP Build 2548770 on Fri May 24 18:01:18 MDT 2019
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (mb_prj.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    <none>
#
# 3. The following remote source files that were added to the original project:-
#
#    "C:/xup/acorn/v002/duts/mb/mb.srcs/sources_1/bd/mbb/mbb.bd"
#    "C:/xup/acorn/v002/duts/mb/mb.srcs/sources_1/imports/hdl/mbb_wrapper.vhd"
#    "C:/xup/acorn/v002/duts/mb/mb.srcs/sources_1/new/tma_wrap.vhd"
#    "C:/xup/acorn/v002/duts/mb/mb.srcs/sources_1/new/tmr_wrap.vhd"
#    "C:/xup/acorn/jtag_usb_001/jtag_usb_001.sdk/core40/Debug/core40.elf"
#    "C:/xup/acorn/v002/duts/mb/mb.srcs/constrs_1/new/top.xdc"
#    "C:/xup/acorn/jtag_usb_001/jtag_usb_001.sdk/core40/Debug/core40.elf"
#
#*****************************************************************************************
if { $argc > 3 } {
    puts "Too many args."
    puts "Please try again."
    break
}

if { $argc < 1 } {
    puts "Setting default processor count 1"
    set proc_count 1
} else {
    puts "Setting processor count "
    puts [lindex $argv 0]
    set proc_count [lindex $argv 0]
}

if { $argc < 2 } {
    puts "Using Devkit2 Target"
    set Target "devkit2"
} else {
    if { [lindex $argv 1] == "devkit2" } {
        puts "Using devkit2 Target"
        set Target "devkit2"
    } elseif { [lindex $argv 1] == "aesku40" } {
        puts "Using aesku40 Target"
        set Target "aesku40"
    } elseif { [lindex $argv 1] == "kupci" } {
        puts "Using kupci Target"
        set Target "kupci"
    } elseif { [lindex $argv 1] == "video" } {
        puts "Using video Target"
        set Target "video"
    } else {
        puts "Unknown Target."
        break
    }
}

if { $argc < 3 } {
    puts "Using UART"
    set output_method "UART"
    set BSCAN false
} else {
    if { [lindex $argv 2] == "BSCAN" } {
        puts "Using BSCAN output"
        set output_method "BSCAN"
        set BSCAN true
    } else {
        puts "Unknown output method."
        break
    }
    
}





# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "mb_prj"

set _xil_proj_name_ [format "%s_%03d_%s_%s" $_xil_proj_name_ $proc_count $Target $output_method]

puts $_xil_proj_name_



# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "mb_prj.tcl"


# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/../../../v002/duts/mb"]"

# Create project
set clk_speed 100000000
if {$Target=="devkit2"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xcku060-ffva1517-1-i
} elseif {$Target=="aesku40"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xcku040-fbva676-1-i
} elseif {$Target=="kupci"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xcku060-ffva1156-2-e
} elseif {$Target=="video"} {
create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xc7a200tsbg484-1
set clk_speed 66667000
}

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [current_project]
set_property -name "board_part" -value "" -objects $obj
set_property -name "corecontainer.enable" -value "0" -objects $obj
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "enable_optional_runs_sta" -value "0" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "generate_ip_upgrade_log" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_interface_inference_priority" -value "" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "legacy_ip_repo_paths" -value "" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "project_type" -value "Default" -objects $obj
set_property -name "pr_flow" -value "0" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "sim.use_ip_compiled_libs" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "source_mgmt_mode" -value "All" -objects $obj
set_property -name "target_language" -value "VHDL" -objects $obj
set_property -name "target_simulator" -value "XSim" -objects $obj
set_property -name "tool_flow" -value "Vivado" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]


add_files $origin_dir/../hdl_src
add_files -fileset constrs_1 $origin_dir/../hdl_src/${Target}/${Target}_target.xdc
if {$Target=="video"} {

} else {
add_files -fileset constrs_1 $origin_dir/../hdl_src/generate_bitstream.xdc
}

set_property top design_1_wrapper [current_fileset]

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild


if {$Target=="video"} {
add_files -norecurse ../hdl_src/${Target}/clk_wiz_0.vhd
import_files -norecurse ../hdl_src/${Target}/clk_wiz_0_inner.xci

} else {
import_files -norecurse ../hdl_src/${Target}/clk_wiz_0.xci
}

update_compile_order -fileset sources_1



set_property  ip_repo_paths  $origin_dir/../ip_repo [current_project]
update_ip_catalog

# Set 'sources_1' fileset file properties for local files
#DO THE BD HERE!
source ./bd/mb_bd.tcl
update_compile_order -fileset sources_1


# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "${origin_dir}/../mb_sw/elf/core40.elf"] \
]
add_files -norecurse -fileset $obj $files


set file "$origin_dir/../mb_sw/elf/core40.elf"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "is_enabled" -value "1" -objects $file_obj
set_property -name "path_mode" -value "RelativeFirst" -objects $file_obj
set_property -name "scoped_to_cells" -value "microblaze_0" -objects $file_obj
set_property -name "scoped_to_ref" -value "design_1" -objects $file_obj
set_property -name "used_in" -value "implementation" -objects $file_obj
set_property -name "used_in_implementation" -value "1" -objects $file_obj
set_property -name "used_in_simulation" -value "0" -objects $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "design_mode" -value "RTL" -objects $obj
set_property -name "edif_extra_search_paths" -value "" -objects $obj
set_property -name "elab_link_dcps" -value "1" -objects $obj
set_property -name "elab_load_timing_constraints" -value "1" -objects $obj
set_property -name "generic" -value "" -objects $obj
set_property -name "include_dirs" -value "" -objects $obj
set_property -name "lib_map_file" -value "" -objects $obj
set_property -name "loop_count" -value "1000" -objects $obj
set_property -name "name" -value "sources_1" -objects $obj
set_property -name "top" -value "tma_wrap" -objects $obj
set_property -name "top_auto_set" -value "0" -objects $obj
set_property -name "verilog_define" -value "" -objects $obj
set_property -name "verilog_uppercase" -value "0" -objects $obj
set_property -name "verilog_version" -value "verilog_2001" -objects $obj
set_property -name "vhdl_version" -value "vhdl_2k" -objects $obj


update_compile_order -fileset sources_1


puts "INFO: Project created:${_xil_proj_name_}"

set_property generic "NUM_PROS=$proc_count USE_BSCAN=$BSCAN CLK_RATE=$clk_speed" [current_fileset]
set_property strategy Flow_AlternateRoutability [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY rebuilt [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]

set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]

launch_runs impl_1 -to_step write_bitstream -jobs 6
wait_on_run impl_1
open_run impl_1
write_edif ../../tmr/input_edifs/$_xil_proj_name_.edf
write_bitstream -bin_file ../../bins/$_xil_proj_name_.bit

close_project