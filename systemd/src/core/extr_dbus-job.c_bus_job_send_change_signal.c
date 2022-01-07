
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int dbus_job_queue; } ;
struct TYPE_7__ {int in_dbus_queue; int sent_dbus_new_signal; int id; int bus_track; TYPE_3__* manager; int unit; } ;
typedef TYPE_1__ Job ;


 int LIST_REMOVE (int ,int ,TYPE_1__*) ;
 int assert (TYPE_1__*) ;
 int bus_foreach_bus (TYPE_3__*,int ,int ,TYPE_1__*) ;
 int bus_unit_send_pending_change_signal (int ,int) ;
 int dbus_queue ;
 int log_debug_errno (int,char*,int ) ;
 int send_changed_signal ;
 int send_new_signal ;

void bus_job_send_change_signal(Job *j) {
        int r;

        assert(j);


        bus_unit_send_pending_change_signal(j->unit, 1);

        if (j->in_dbus_queue) {
                LIST_REMOVE(dbus_queue, j->manager->dbus_job_queue, j);
                j->in_dbus_queue = 0;
        }

        r = bus_foreach_bus(j->manager, j->bus_track, j->sent_dbus_new_signal ? send_changed_signal : send_new_signal, j);
        if (r < 0)
                log_debug_errno(r, "Failed to send job change signal for %u: %m", j->id);

        j->sent_dbus_new_signal = 1;
}
