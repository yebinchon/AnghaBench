
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__ state; int bus; } ;
typedef TYPE_1__ BusWaitForUnits ;


 scalar_t__ BUS_WAIT_RUNNING ;
 int assert (TYPE_1__*) ;
 int sd_bus_process (int ,int *) ;
 int sd_bus_wait (int ,int ) ;

int bus_wait_for_units_run(BusWaitForUnits *d) {
        int r;

        assert(d);

        while (d->state == BUS_WAIT_RUNNING) {

                r = sd_bus_process(d->bus, ((void*)0));
                if (r < 0)
                        return r;
                if (r > 0)
                        continue;

                r = sd_bus_wait(d->bus, (uint64_t) -1);
                if (r < 0)
                        return r;
        }

        return d->state;
}
