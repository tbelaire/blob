
PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig
CXXFLAGS+=-std=c++11
CPPFLAGS+=$(shell pkg-config --cflags cairo)
LDLIBS=$(shell pkg-config --libs cairo)

CC=${CXX}


draw : draw.o main.o
#	$(CXX) $(CPPFLAGS) $(CXXFLAGS) -c 
#	$(CC) $(LDFLAGS) draw.o  $(LOADLIBES) $(LDLIBS)

.PHONY : clean

clean :
	- rm -f draw draw.o main.o