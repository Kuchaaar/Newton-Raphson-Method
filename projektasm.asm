	section .text use32
	global	_square
	_square:
	%idefine	a	[ebp+8]
		push	ebp
		mov	ebp, esp
		finit
		fld1
		fadd dword [root]
		fadd dword [root]
		fld1
		fadd dword [root]
        cube_root_iteration:
			fld dword [root]
			fmul dword [root]
			fld dword a
			fdiv st1
			fld dword [root]
			fmul st3
			fadd st1
			fdiv st4
			fstp dword [root]
			fld dword [root]
			fsub dword [oldroot]
			fabs
			fcomp dword [delta]
			fstsw ax
			sahf
			ja przed
			jbe koniec
		przed:
			fld dword [root]
			fstp dword [oldroot]
			fstp st0
			fstp st0
			jmp cube_root_iteration
		koniec:
			fld dword [root]
			leave
			ret
		root dd 1.0
		oldroot dd 1.0
		delta dd 0.0000000000000000001