
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ n_operations; int event; int bus; int polkit_registry; int nscd_cache_flush_event; int image_cache_defer_event; int image_cache; int machine_leaders; int machine_units; int machines; scalar_t__ operations; } ;
typedef TYPE_1__ Manager ;


 int assert (int) ;
 int bus_verify_polkit_async_registry_free (int ) ;
 int hashmap_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int operation_free (scalar_t__) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;

__attribute__((used)) static Manager* manager_unref(Manager *m) {
        if (!m)
                return ((void*)0);

        while (m->operations)
                operation_free(m->operations);

        assert(m->n_operations == 0);

        hashmap_free(m->machines);
        hashmap_free(m->machine_units);
        hashmap_free(m->machine_leaders);
        hashmap_free(m->image_cache);

        sd_event_source_unref(m->image_cache_defer_event);
        sd_event_source_unref(m->nscd_cache_flush_event);

        bus_verify_polkit_async_registry_free(m->polkit_registry);

        sd_bus_flush_close_unref(m->bus);
        sd_event_unref(m->event);

        return mfree(m);
}
