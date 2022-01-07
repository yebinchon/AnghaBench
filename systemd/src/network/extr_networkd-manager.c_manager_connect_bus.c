
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bus; int event; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int bus_open_system_watch_bind_with_description (scalar_t__*,char*) ;
 int link_node_enumerator ;
 int link_object_find ;
 int link_vtable ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 int manager_vtable ;
 int match_prepare_for_sleep ;
 int network_node_enumerator ;
 int network_object_find ;
 int network_vtable ;
 int on_connected ;
 int sd_bus_add_fallback_vtable (scalar_t__,int *,char*,char*,int ,int ,TYPE_1__*) ;
 int sd_bus_add_node_enumerator (scalar_t__,int *,char*,int ,TYPE_1__*) ;
 int sd_bus_add_object_vtable (scalar_t__,int *,char*,char*,int ,TYPE_1__*) ;
 int sd_bus_attach_event (scalar_t__,int ,int ) ;
 int sd_bus_match_signal_async (scalar_t__,int *,char*,char*,char*,char*,int ,int *,TYPE_1__*) ;
 int sd_bus_request_name_async (scalar_t__,int *,char*,int ,int *,int *) ;

int manager_connect_bus(Manager *m) {
        int r;

        assert(m);

        if (m->bus)
                return 0;

        r = bus_open_system_watch_bind_with_description(&m->bus, "bus-api-network");
        if (r < 0)
                return log_error_errno(r, "Failed to connect to bus: %m");

        r = sd_bus_add_object_vtable(m->bus, ((void*)0), "/org/freedesktop/network1", "org.freedesktop.network1.Manager", manager_vtable, m);
        if (r < 0)
                return log_error_errno(r, "Failed to add manager object vtable: %m");

        r = sd_bus_add_fallback_vtable(m->bus, ((void*)0), "/org/freedesktop/network1/link", "org.freedesktop.network1.Link", link_vtable, link_object_find, m);
        if (r < 0)
               return log_error_errno(r, "Failed to add link object vtable: %m");

        r = sd_bus_add_node_enumerator(m->bus, ((void*)0), "/org/freedesktop/network1/link", link_node_enumerator, m);
        if (r < 0)
                return log_error_errno(r, "Failed to add link enumerator: %m");

        r = sd_bus_add_fallback_vtable(m->bus, ((void*)0), "/org/freedesktop/network1/network", "org.freedesktop.network1.Network", network_vtable, network_object_find, m);
        if (r < 0)
               return log_error_errno(r, "Failed to add network object vtable: %m");

        r = sd_bus_add_node_enumerator(m->bus, ((void*)0), "/org/freedesktop/network1/network", network_node_enumerator, m);
        if (r < 0)
                return log_error_errno(r, "Failed to add network enumerator: %m");

        r = sd_bus_request_name_async(m->bus, ((void*)0), "org.freedesktop.network1", 0, ((void*)0), ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to request name: %m");

        r = sd_bus_attach_event(m->bus, m->event, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to attach bus to event loop: %m");

        r = sd_bus_match_signal_async(
                        m->bus,
                        ((void*)0),
                        "org.freedesktop.DBus.Local",
                        ((void*)0),
                        "org.freedesktop.DBus.Local",
                        "Connected",
                        on_connected, ((void*)0), m);
        if (r < 0)
                return log_error_errno(r, "Failed to request match on Connected signal: %m");

        r = sd_bus_match_signal_async(
                        m->bus,
                        ((void*)0),
                        "org.freedesktop.login1",
                        "/org/freedesktop/login1",
                        "org.freedesktop.login1.Manager",
                        "PrepareForSleep",
                        match_prepare_for_sleep, ((void*)0), m);
        if (r < 0)
                log_warning_errno(r, "Failed to request match for PrepareForSleep, ignoring: %m");

        return 0;
}
