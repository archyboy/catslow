module main

import os

fn main() {
	mut buffer := []string{}

	println(os.args)
	for k in 1 .. os.args.len {
		println(k.str())
		println('---------------------------------')
		println('Filename: ${os.args[k]}')
		println('---------------------------------')
		data_u8 := os.read_bytes(os.args[k].str()) or {
			eprintln(err)
			return
		}
		// println(data_u8.bytestr())
		buffer << data_u8.bytestr()
		println(buffer[0..buffer.len])
	}
}
