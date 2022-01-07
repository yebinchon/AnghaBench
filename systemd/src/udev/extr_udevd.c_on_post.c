
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_event_source ;
struct TYPE_4__ {scalar_t__ cgroup; int event; scalar_t__ exit; int kill_workers_event; int workers; int events; } ;
typedef TYPE_1__ Manager ;


 int CGROUP_IGNORE_SELF ;
 int CLOCK_MONOTONIC ;
 int LIST_IS_EMPTY (int ) ;
 int SIGKILL ;
 int SYSTEMD_CGROUP_CONTROLLER ;
 int USEC_PER_SEC ;
 int assert (TYPE_1__*) ;
 int cg_kill (int ,scalar_t__,int ,int ,int *,int *,int *) ;
 int event_reset_time (int ,int *,int ,scalar_t__,int,int ,TYPE_1__*,int ,char*,int) ;
 int hashmap_isempty (int ) ;
 scalar_t__ now (int ) ;
 int on_kill_workers_event ;
 int sd_event_exit (int ,int ) ;

__attribute__((used)) static int on_post(sd_event_source *s, void *userdata) {
        Manager *manager = userdata;

        assert(manager);

        if (!LIST_IS_EMPTY(manager->events))
                return 1;



        if (!hashmap_isempty(manager->workers)) {

                (void) event_reset_time(manager->event, &manager->kill_workers_event, CLOCK_MONOTONIC,
                                        now(CLOCK_MONOTONIC) + 3 * USEC_PER_SEC, USEC_PER_SEC,
                                        on_kill_workers_event, manager, 0, "kill-workers-event", 0);
                return 1;
        }



        if (manager->exit)
                return sd_event_exit(manager->event, 0);

        if (manager->cgroup)

                (void) cg_kill(SYSTEMD_CGROUP_CONTROLLER, manager->cgroup, SIGKILL, CGROUP_IGNORE_SELF, ((void*)0), ((void*)0), ((void*)0));

        return 1;
}
