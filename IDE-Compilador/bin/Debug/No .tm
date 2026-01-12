* TINY Compilation to TM Code
* No File
* Standard prelude:
0:  LD  6,0(0) 	load maxaddress from location 0
1:  ST  0,0(0) 	clear location 0
* End of standard prelude.
2:  IN  0,0,0 	read integer value
3:  ST  0,0(5) 	read: store value
* -> Op
* -> Op
* -> Id
4:  LD  0,0(5) 	load id value
* <- Id
5:  ST  0,0(6) 	op: push left
* -> Const
6:  LDC  0,4(0) 	load const
* <- Const
7:  LD  1,0(6) 	op: load left
8:  DIV  0,1,0 	op /
* <- Op
9:  ST  0,0(6) 	op: push left
* -> Const
10:  LDC  0,40(0) 	load const
* <- Const
11:  LD  1,0(6) 	op: load left
12:  ADD  0,1,0 	op +
* <- Op
13:  OUT  0,0,0 	write ac
* End of execution.
14:  HALT  0,0,0 	
