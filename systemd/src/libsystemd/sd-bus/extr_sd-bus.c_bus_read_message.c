
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;
typedef int int64_t ;


 int assert (int *) ;
 int bus_socket_read_message (int *) ;

__attribute__((used)) static int bus_read_message(sd_bus *bus, bool hint_priority, int64_t priority) {
        assert(bus);

        return bus_socket_read_message(bus);
}
