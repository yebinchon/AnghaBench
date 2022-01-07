
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; int bus_track; int manager; scalar_t__ in_dbus_queue; int sent_dbus_new_signal; } ;
typedef TYPE_1__ Unit ;


 int assert (TYPE_1__*) ;
 int bus_foreach_bus (int ,int ,int ,TYPE_1__*) ;
 int bus_unit_send_change_signal (TYPE_1__*) ;
 int log_unit_debug_errno (TYPE_1__*,int,char*,int ) ;
 int send_removed_signal ;

void bus_unit_send_removed_signal(Unit *u) {
        int r;
        assert(u);

        if (!u->sent_dbus_new_signal || u->in_dbus_queue)
                bus_unit_send_change_signal(u);

        if (!u->id)
                return;

        r = bus_foreach_bus(u->manager, u->bus_track, send_removed_signal, u);
        if (r < 0)
                log_unit_debug_errno(u, r, "Failed to send unit remove signal for %s: %m", u->id);
}
