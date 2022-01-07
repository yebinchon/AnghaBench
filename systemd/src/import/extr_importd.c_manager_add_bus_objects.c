
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int event; int bus; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_error_errno (int,char*) ;
 int manager_vtable ;
 int sd_bus_add_fallback_vtable (int ,int *,char*,char*,int ,int ,TYPE_1__*) ;
 int sd_bus_add_node_enumerator (int ,int *,char*,int ,TYPE_1__*) ;
 int sd_bus_add_object_vtable (int ,int *,char*,char*,int ,TYPE_1__*) ;
 int sd_bus_attach_event (int ,int ,int ) ;
 int sd_bus_request_name_async (int ,int *,char*,int ,int *,int *) ;
 int transfer_node_enumerator ;
 int transfer_object_find ;
 int transfer_vtable ;

__attribute__((used)) static int manager_add_bus_objects(Manager *m) {
        int r;

        assert(m);

        r = sd_bus_add_object_vtable(m->bus, ((void*)0), "/org/freedesktop/import1", "org.freedesktop.import1.Manager", manager_vtable, m);
        if (r < 0)
                return log_error_errno(r, "Failed to register object: %m");

        r = sd_bus_add_fallback_vtable(m->bus, ((void*)0), "/org/freedesktop/import1/transfer", "org.freedesktop.import1.Transfer", transfer_vtable, transfer_object_find, m);
        if (r < 0)
                return log_error_errno(r, "Failed to register object: %m");

        r = sd_bus_add_node_enumerator(m->bus, ((void*)0), "/org/freedesktop/import1/transfer", transfer_node_enumerator, m);
        if (r < 0)
                return log_error_errno(r, "Failed to add transfer enumerator: %m");

        r = sd_bus_request_name_async(m->bus, ((void*)0), "org.freedesktop.import1", 0, ((void*)0), ((void*)0));
        if (r < 0)
                return log_error_errno(r, "Failed to request name: %m");

        r = sd_bus_attach_event(m->bus, m->event, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to attach bus to event loop: %m");

        return 0;
}
