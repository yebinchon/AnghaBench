
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UnitStatusInfo ;
struct TYPE_4__ {int * units; int slot_job_removed; int cache; int polkit_registry; int zone; } ;
typedef TYPE_1__ Context ;


 int LIST_REMOVE (int ,int *,int *) ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async_registry_free (int ) ;
 int free (int ) ;
 int sd_bus_message_unref (int ) ;
 int sd_bus_slot_unref (int ) ;
 int unit_status_info_free (int *) ;
 int units ;

__attribute__((used)) static void context_clear(Context *c) {
        UnitStatusInfo *p;

        assert(c);

        free(c->zone);
        bus_verify_polkit_async_registry_free(c->polkit_registry);
        sd_bus_message_unref(c->cache);

        sd_bus_slot_unref(c->slot_job_removed);

        while ((p = c->units)) {
                LIST_REMOVE(units, c->units, p);
                unit_status_info_free(p);
        }
}
