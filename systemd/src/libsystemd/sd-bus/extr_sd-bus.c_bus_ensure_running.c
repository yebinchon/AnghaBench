
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_1__ sd_bus ;


 int BUS_CLOSED ;
 int BUS_CLOSING ;
 scalar_t__ BUS_RUNNING ;
 int BUS_UNSET ;
 int ENOTCONN ;
 scalar_t__ IN_SET (scalar_t__,int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 int sd_bus_process (TYPE_1__*,int *) ;
 int sd_bus_wait (TYPE_1__*,int ) ;

int bus_ensure_running(sd_bus *bus) {
        int r;

        assert(bus);

        if (IN_SET(bus->state, BUS_UNSET, BUS_CLOSED, BUS_CLOSING))
                return -ENOTCONN;
        if (bus->state == BUS_RUNNING)
                return 1;

        for (;;) {
                r = sd_bus_process(bus, ((void*)0));
                if (r < 0)
                        return r;
                if (bus->state == BUS_RUNNING)
                        return 1;
                if (r > 0)
                        continue;

                r = sd_bus_wait(bus, (uint64_t) -1);
                if (r < 0)
                        return r;
        }
}
