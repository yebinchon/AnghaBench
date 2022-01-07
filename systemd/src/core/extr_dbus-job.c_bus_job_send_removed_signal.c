
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int id; int bus_track; int manager; int unit; int sent_dbus_new_signal; } ;
typedef TYPE_1__ Job ;


 int assert (TYPE_1__*) ;
 int bus_foreach_bus (int ,int ,int ,TYPE_1__*) ;
 int bus_job_send_change_signal (TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int log_debug_errno (int,char*,int ) ;
 int send_removed_signal ;

void bus_job_send_removed_signal(Job *j) {
        int r;

        assert(j);

        if (!j->sent_dbus_new_signal)
                bus_job_send_change_signal(j);


        bus_unit_send_pending_change_signal(j->unit, 1);

        r = bus_foreach_bus(j->manager, j->bus_track, send_removed_signal, j);
        if (r < 0)
                log_debug_errno(r, "Failed to send job remove signal for %u: %m", j->id);
}
