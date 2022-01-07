
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int items; int bus; } ;
typedef TYPE_1__ BusWaitForUnits ;


 int assert (TYPE_1__*) ;
 int hashmap_isempty (int ) ;

__attribute__((used)) static bool bus_wait_for_units_is_ready(BusWaitForUnits *d) {
        assert(d);

        if (!d->bus)
                return 1;

        return hashmap_isempty(d->items);
}
