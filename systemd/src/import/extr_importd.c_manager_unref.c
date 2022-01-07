
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Transfer ;
struct TYPE_6__ {int event; int bus; int polkit_registry; int transfers; int notify_fd; int notify_event_source; } ;
typedef TYPE_1__ Manager ;


 int bus_verify_polkit_async_registry_free (int ) ;
 int * hashmap_first (int ) ;
 int hashmap_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int safe_close (int ) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int transfer_unref (int *) ;

__attribute__((used)) static Manager *manager_unref(Manager *m) {
        Transfer *t;

        if (!m)
                return ((void*)0);

        sd_event_source_unref(m->notify_event_source);
        safe_close(m->notify_fd);

        while ((t = hashmap_first(m->transfers)))
                transfer_unref(t);

        hashmap_free(m->transfers);

        bus_verify_polkit_async_registry_free(m->polkit_registry);

        m->bus = sd_bus_flush_close_unref(m->bus);
        sd_event_unref(m->event);

        return mfree(m);
}
