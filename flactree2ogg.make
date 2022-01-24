SRCS := $(wildcard *.flac)
OBJS = $(SRCS:%.flac=%.ogg)

.PHONY: all
all: $(OBJS)

%.ogg:%.flac
	@oggenc --quiet --output="$@" "$?"
