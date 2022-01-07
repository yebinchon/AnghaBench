
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; scalar_t__ bus; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int bus_open_system_watch_bind_with_description (scalar_t__*,char*) ;
 int log_error_errno (int,char*) ;
 int manager_vtable ;
 int sd_bus_add_object_vtable (scalar_t__,int *,char*,char*,int ,TYPE_1__*) ;
 int sd_bus_attach_event (scalar_t__,int ,int ) ;
 int sd_bus_request_name_async (scalar_t__,int *,char*,int ,int *,int *) ;

int manager_connect_bus(Manager *m) {
        int r;

        assert(m);

        if (m->bus)
                return 0;

        r = bus_open_system_watch_bind_with_description(&m->bus, "bus-api-timesync");
        if (r < 0)
                return log_error_errno(r, "Failed to connect to bus: %m");

        r = sd_bus_add_object_vtable(m->bus, ((void*)0), "/org/freedesktop/timesync1", "org.freedesktop.timesync1.Manager", manager_vtable, m);
        if (r < 0)
                return log_error_errno(r, "Failed to add manager object vtable: %m");

        r = sd_bus_request_name_async(m->bus, ((void*)0), "org.freedesktop.timesync1", 0, ((void*)0), ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to request name: %m");

        r = sd_bus_attach_event(m->bus, m->event, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to attach bus to event loop: %m");

        return 0;
}
