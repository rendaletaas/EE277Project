//Top module for the Parallel Serial Interface

module top_psi (clk_parallel, clk_serial, rst_n, req, grant, data_p, pktend, ready, data_s);
//parallel ports
input logic clk_parallel;
input logic rst_n, req;
input logic [31:0] data_p;
input logic pktend;
output logic grant, ready;

//serial ports
input logic clk_serial;
output logic data_s;

parallel_interface a0;
async_fifo a1;
serial_interface a2;

endmodule //end top_psi
