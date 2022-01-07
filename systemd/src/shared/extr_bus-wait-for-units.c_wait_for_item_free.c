
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int clean_result; int active_state; int bus_path; int slot_get_all; int slot_properties_changed; TYPE_1__* parent; int flags; } ;
typedef TYPE_2__ WaitForItem ;
struct TYPE_8__ {TYPE_2__* current; int items; scalar_t__ bus; } ;


 int BUS_WAIT_REFFED ;
 scalar_t__ FLAGS_SET (int ,int ) ;
 int assert_se (int) ;
 int free (int ) ;
 TYPE_2__* hashmap_remove (int ,int ) ;
 int log_debug_errno (int,char*,int ) ;
 TYPE_2__* mfree (TYPE_2__*) ;
 int sd_bus_call_method_async (scalar_t__,int *,char*,int ,char*,char*,int *,int *,int *) ;
 int sd_bus_slot_unref (int ) ;

__attribute__((used)) static WaitForItem *wait_for_item_free(WaitForItem *item) {
        int r;

        if (!item)
                return ((void*)0);

        if (item->parent) {
                if (FLAGS_SET(item->flags, BUS_WAIT_REFFED) && item->bus_path && item->parent->bus) {
                        r = sd_bus_call_method_async(
                                        item->parent->bus,
                                        ((void*)0),
                                        "org.freedesktop.systemd1",
                                        item->bus_path,
                                        "org.freedesktop.systemd1.Unit",
                                        "Unref",
                                        ((void*)0),
                                        ((void*)0),
                                        ((void*)0));
                        if (r < 0)
                                log_debug_errno(r, "Failed to drop reference to unit %s, ignoring: %m", item->bus_path);
                }

                assert_se(hashmap_remove(item->parent->items, item->bus_path) == item);

                if (item->parent->current == item)
                        item->parent->current = ((void*)0);
        }

        sd_bus_slot_unref(item->slot_properties_changed);
        sd_bus_slot_unref(item->slot_get_all);

        free(item->bus_path);
        free(item->active_state);
        free(item->clean_result);

        return mfree(item);
}
