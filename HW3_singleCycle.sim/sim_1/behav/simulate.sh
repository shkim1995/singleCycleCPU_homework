#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim cpu_evaluation_tb_behav -key {Behavioral:sim_1:Functional:cpu_evaluation_tb} -tclbatch cpu_evaluation_tb.tcl -log simulate.log
