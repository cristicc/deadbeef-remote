CFLAGS=-O2
LDFLAGS=-shared

TARGET_LIB=remote.so
TARGET_APP=deadbeefctl

all: $(TARGET_LIB) $(TARGET_APP)
.PHONY: all strip install clean

$(TARGET_LIB): remote.o
	gcc $(LDFLAGS) $(CFLAGS) -o $@ $^

$(TARGET_APP): client.o
	gcc $(CFLAGS) -o $@ $^

%.o: %.c
	gcc $(CFLAGS) -fPIC -o $@ -c $<

strip:
	strip $(TARGET_LIB) $(TARGET_APP)

install:
	install -m 0644 -D $(TARGET_LIB) $${HOME}/.local/lib/deadbeef/remote.so

clean:
	rm $(TARGET_LIB) $(TARGET_APP) *.o
