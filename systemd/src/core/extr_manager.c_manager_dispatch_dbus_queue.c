
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* in_dbus_queue; } ;
typedef TYPE_1__ Unit ;
struct TYPE_14__ {TYPE_2__* in_dbus_queue; } ;
struct TYPE_13__ {int send_reloading_done; scalar_t__ pending_reload_message; TYPE_3__* dbus_job_queue; TYPE_1__* dbus_unit_queue; } ;
typedef TYPE_2__ Manager ;
typedef TYPE_3__ Job ;


 scalar_t__ MANAGER_BUS_BUSY_THRESHOLD ;
 unsigned int MANAGER_BUS_MESSAGE_BUDGET ;
 scalar_t__ MANAGER_IS_RELOADING (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int bus_job_send_change_signal (TYPE_3__*) ;
 int bus_manager_send_reloading (TYPE_2__*,int) ;
 int bus_send_pending_reload_message (TYPE_2__*) ;
 int bus_unit_send_change_signal (TYPE_1__*) ;
 scalar_t__ manager_bus_n_queued_write (TYPE_2__*) ;

__attribute__((used)) static unsigned manager_dispatch_dbus_queue(Manager *m) {
        unsigned n = 0, budget;
        Unit *u;
        Job *j;

        assert(m);



        if (MANAGER_IS_RELOADING(m) || m->send_reloading_done || m->pending_reload_message)
                budget = (unsigned) -1;
        else {

                if (!m->dbus_unit_queue && !m->dbus_job_queue)
                        return 0;



                if (manager_bus_n_queued_write(m) > MANAGER_BUS_BUSY_THRESHOLD)
                        return 0;
                budget = MANAGER_BUS_MESSAGE_BUDGET;
        }

        while (budget != 0 && (u = m->dbus_unit_queue)) {

                assert(u->in_dbus_queue);

                bus_unit_send_change_signal(u);
                n++;

                if (budget != (unsigned) -1)
                        budget--;
        }

        while (budget != 0 && (j = m->dbus_job_queue)) {
                assert(j->in_dbus_queue);

                bus_job_send_change_signal(j);
                n++;

                if (budget != (unsigned) -1)
                        budget--;
        }

        if (m->send_reloading_done) {
                m->send_reloading_done = 0;
                bus_manager_send_reloading(m, 0);
                n++;
        }

        if (m->pending_reload_message) {
                bus_send_pending_reload_message(m);
                n++;
        }

        return n;
}
