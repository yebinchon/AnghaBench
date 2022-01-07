
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* unit; int sent_dbus_new_signal; int in_dbus_queue; } ;
struct TYPE_6__ {int manager; } ;
typedef TYPE_2__ Job ;


 scalar_t__ MANAGER_IS_RELOADING (int ) ;
 int assert (TYPE_2__*) ;
 int bus_job_send_change_signal (TYPE_2__*) ;

void bus_job_send_pending_change_signal(Job *j, bool including_new) {
        assert(j);

        if (!j->in_dbus_queue)
                return;

        if (!j->sent_dbus_new_signal && !including_new)
                return;

        if (MANAGER_IS_RELOADING(j->unit->manager))
                return;

        bus_job_send_change_signal(j);
}
