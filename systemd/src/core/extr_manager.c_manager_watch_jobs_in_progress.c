
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_6__ {scalar_t__ jobs_in_progress_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int CLOCK_MONOTONIC ;
 scalar_t__ JOBS_IN_PROGRESS_WAIT_USEC ;
 int assert (TYPE_1__*) ;
 int manager_dispatch_jobs_in_progress ;
 int manager_is_confirm_spawn_disabled (TYPE_1__*) ;
 scalar_t__ now (int ) ;
 int sd_event_add_time (int ,scalar_t__*,int ,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;

__attribute__((used)) static void manager_watch_jobs_in_progress(Manager *m) {
        usec_t next;
        int r;

        assert(m);




        if (!manager_is_confirm_spawn_disabled(m))
                return;

        if (m->jobs_in_progress_event_source)
                return;

        next = now(CLOCK_MONOTONIC) + JOBS_IN_PROGRESS_WAIT_USEC;
        r = sd_event_add_time(
                        m->event,
                        &m->jobs_in_progress_event_source,
                        CLOCK_MONOTONIC,
                        next, 0,
                        manager_dispatch_jobs_in_progress, m);
        if (r < 0)
                return;

        (void) sd_event_source_set_description(m->jobs_in_progress_event_source, "manager-jobs-in-progress");
}
