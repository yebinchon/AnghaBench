
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int userdata; int bus_path; int (* unit_callback ) (TYPE_2__*,int ,int,int ) ;} ;
typedef TYPE_1__ WaitForItem ;
struct TYPE_9__ {int items; TYPE_1__* current; int bus; int slot_disconnected; } ;
typedef TYPE_2__ BusWaitForUnits ;


 int assert (TYPE_2__*) ;
 TYPE_1__* hashmap_first (int ) ;
 int hashmap_free (int ) ;
 int sd_bus_slot_unref (int ) ;
 int sd_bus_unref (int ) ;
 int stub1 (TYPE_2__*,int ,int,int ) ;
 int wait_for_item_free (TYPE_1__*) ;

__attribute__((used)) static void bus_wait_for_units_clear(BusWaitForUnits *d) {
        WaitForItem *item;

        assert(d);

        d->slot_disconnected = sd_bus_slot_unref(d->slot_disconnected);
        d->bus = sd_bus_unref(d->bus);

        while ((item = hashmap_first(d->items))) {
                d->current = item;

                item->unit_callback(d, item->bus_path, 0, item->userdata);
                wait_for_item_free(item);
        }

        d->items = hashmap_free(d->items);
}
