
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bus; int slot_disconnected; } ;
typedef TYPE_1__ BusWaitForUnits ;


 int bus_wait_for_units_clear (TYPE_1__*) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_bus_slot_unref (int ) ;
 int sd_bus_unref (int ) ;

BusWaitForUnits* bus_wait_for_units_free(BusWaitForUnits *d) {
        if (!d)
                return ((void*)0);

        bus_wait_for_units_clear(d);
        sd_bus_slot_unref(d->slot_disconnected);
        sd_bus_unref(d->bus);

        return mfree(d);
}
