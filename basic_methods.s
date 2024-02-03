.data
.balign 4
	my_string: .asciz "%d\n"
.text


.extern printf

.global mains
	mains:
		push {ip, lr}
		BL addition
		
		pop {ip,pc}
		
	addition:
		push {ip, lr}
		MOV R2, #2
		MOV R3, #4
		
		ADD R1, R3, R2
		
		LDR R0, =my_string
		
		BL printf
		pop {ip, pc}
