
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int in_dbus_queue; int sent_dbus_new_signal; int id; int bus_track; TYPE_4__* manager; } ;
typedef TYPE_1__ Unit ;
struct TYPE_9__ {int dbus_unit_queue; } ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_foreach_bus (TYPE_4__*,int ,int ,TYPE_1__*) ;
 int dbus_queue ;
 int log_unit_debug_errno (TYPE_1__*,int,char*,int ) ;
 int send_changed_signal ;
 int send_new_signal ;

void bus_unit_send_change_signal(Unit *u) {
        int r;
        assert(u);

        if (u->in_dbus_queue) {
                LIST_REMOVE(dbus_queue, u->manager->dbus_unit_queue, u);
                u->in_dbus_queue = 0;
        }

        if (!u->id)
                return;

        r = bus_foreach_bus(u->manager, u->bus_track, u->sent_dbus_new_signal ? send_changed_signal : send_new_signal, u);
        if (r < 0)
                log_unit_debug_errno(u, r, "Failed to send unit change signal for %s: %m", u->id);

        u->sent_dbus_new_signal = 1;
}
