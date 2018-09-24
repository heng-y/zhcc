default: zhcc utfencode zhkeywords-encoded.h LICENSE
	chmod +x zhcc
	chmod +x utfencode
zhkeywords-encoded.h: zhkeywords.h utfencode
	bash utfencode zhkeywords.h zhkeywords-encoded.h
