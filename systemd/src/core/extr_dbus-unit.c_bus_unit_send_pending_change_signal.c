
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int manager; int sent_dbus_new_signal; int in_dbus_queue; } ;
typedef TYPE_1__ Unit ;


 scalar_t__ MANAGER_IS_RELOADING (int ) ;
 int bus_unit_send_change_signal (TYPE_1__*) ;

void bus_unit_send_pending_change_signal(Unit *u, bool including_new) {





        if (!u->in_dbus_queue)
                return;

        if (!u->sent_dbus_new_signal && !including_new)


                return;

        if (MANAGER_IS_RELOADING(u->manager))

                return;

        bus_unit_send_change_signal(u);
}
