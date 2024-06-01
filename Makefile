#CC=zig-linux-x86_64-0.12.0/zig cc
CFLAGS=-Wall -g
BUILD=.build
%: %.c
	$(CC) $(CFLAGS) $^ -o $(BUILD)/$@ $(LDFLAGS) && ./$(BUILD)/$@
clean:
	rm -rf *~ *.o $(BUILD)/*
zig-install:
	curl -qL https://ziglang.org/download/0.12.0/zig-linux-x86_64-0.12.0.tar.xz | tar Jx
.PHONY: clean zig-install
