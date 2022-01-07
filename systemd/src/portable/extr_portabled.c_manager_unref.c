
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int event; int bus; int polkit_registry; int image_cache_defer_event; int image_cache; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async_registry_free (int ) ;
 int hashmap_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;

__attribute__((used)) static Manager* manager_unref(Manager *m) {
        assert(m);

        hashmap_free(m->image_cache);

        sd_event_source_unref(m->image_cache_defer_event);

        bus_verify_polkit_async_registry_free(m->polkit_registry);

        sd_bus_flush_close_unref(m->bus);
        sd_event_unref(m->event);

        return mfree(m);
}
