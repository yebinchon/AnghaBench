
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bus_wait_for_units_ready_callback ;
struct TYPE_4__ {void* userdata; int ready_callback; } ;
typedef TYPE_1__ BusWaitForUnits ;


 int assert (TYPE_1__*) ;

void bus_wait_for_units_set_ready_callback(BusWaitForUnits *d, bus_wait_for_units_ready_callback callback, void *userdata) {
        assert(d);

        d->ready_callback = callback;
        d->userdata = userdata;
}
