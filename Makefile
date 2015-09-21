CFLAGS= -c -g
LDFLAGS= -lpthread -levent
# LDFLAGS= -lpthread 

OBJS += q_rsqrt

all:$(OBJS)
.PHONY: all

%.o:%.c
	cc $(CFLAGS) $< -o $@

%.o:%.cc
	g++ $(CFLAGS) $< -o $@

q_rsqrt: q_rsqrt.c
	cc $^ -o $@ $(LDFALGS)

clean:
	rm *.o 
	rm $(OBJS)


