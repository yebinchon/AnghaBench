
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rqueue_size; int rqueue_allocated; int rqueue; } ;
typedef TYPE_1__ sd_bus ;


 scalar_t__ BUS_RQUEUE_MAX ;
 int ENOBUFS ;
 int ENOMEM ;
 int GREEDY_REALLOC (int ,int ,scalar_t__) ;
 int assert (TYPE_1__*) ;

int bus_rqueue_make_room(sd_bus *bus) {
        assert(bus);

        if (bus->rqueue_size >= BUS_RQUEUE_MAX)
                return -ENOBUFS;

        if (!GREEDY_REALLOC(bus->rqueue, bus->rqueue_allocated, bus->rqueue_size + 1))
                return -ENOMEM;

        return 0;
}
