
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bus; int event; int resolve; int network_monitor; int network_event_source; int event_retry; } ;
typedef TYPE_1__ Manager ;


 int SERVER_FALLBACK ;
 int SERVER_LINK ;
 int SERVER_SYSTEM ;
 int free (TYPE_1__*) ;
 int manager_disconnect (TYPE_1__*) ;
 int manager_flush_server_names (TYPE_1__*,int ) ;
 int sd_bus_flush_close_unref (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int sd_network_monitor_unref (int ) ;
 int sd_resolve_unref (int ) ;

void manager_free(Manager *m) {
        if (!m)
                return;

        manager_disconnect(m);
        manager_flush_server_names(m, SERVER_SYSTEM);
        manager_flush_server_names(m, SERVER_LINK);
        manager_flush_server_names(m, SERVER_FALLBACK);

        sd_event_source_unref(m->event_retry);

        sd_event_source_unref(m->network_event_source);
        sd_network_monitor_unref(m->network_monitor);

        sd_resolve_unref(m->resolve);
        sd_event_unref(m->event);

        sd_bus_flush_close_unref(m->bus);

        free(m);
}
