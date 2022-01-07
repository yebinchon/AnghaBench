
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_7__ {int wqueue_size; scalar_t__ windex; int * wqueue; int state; } ;
typedef TYPE_1__ sd_bus ;


 int BUS_HELLO ;
 scalar_t__ BUS_MESSAGE_SIZE (int ) ;
 int BUS_RUNNING ;
 TYPE_1__* IN_SET (int ,int ,int ) ;
 int assert (TYPE_1__*) ;
 int bus_message_unref_queued (int ,TYPE_1__*) ;
 int bus_write_message (TYPE_1__*,int ,scalar_t__*) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static int dispatch_wqueue(sd_bus *bus) {
        int r, ret = 0;

        assert(bus);
        assert(IN_SET(bus->state, BUS_RUNNING, BUS_HELLO));

        while (bus->wqueue_size > 0) {

                r = bus_write_message(bus, bus->wqueue[0], &bus->windex);
                if (r < 0)
                        return r;
                else if (r == 0)

                        return ret;
                else if (bus->windex >= BUS_MESSAGE_SIZE(bus->wqueue[0])) {
                        bus->wqueue_size--;
                        bus_message_unref_queued(bus->wqueue[0], bus);
                        memmove(bus->wqueue, bus->wqueue + 1, sizeof(sd_bus_message*) * bus->wqueue_size);
                        bus->windex = 0;

                        ret = 1;
                }
        }

        return ret;
}
