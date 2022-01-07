
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ timestamps; int * confirm_spawn; scalar_t__ jobs_in_progress_event_source; int jobs; } ;
typedef TYPE_1__ Manager ;


 int CLOCK_MONOTONIC ;
 scalar_t__ JOBS_IN_PROGRESS_WAIT_USEC ;
 scalar_t__ MANAGER_IS_FINISHED (TYPE_1__*) ;
 scalar_t__ MANAGER_IS_RELOADING (TYPE_1__*) ;
 int MANAGER_IS_RUNNING (TYPE_1__*) ;
 scalar_t__ MANAGER_TIMESTAMP_FINISH ;
 int assert (TYPE_1__*) ;
 int dual_timestamp_get (scalar_t__) ;
 scalar_t__ hashmap_size (int ) ;
 int manager_check_basic_target (TYPE_1__*) ;
 int manager_close_ask_password (TYPE_1__*) ;
 int manager_close_idle_pipe (TYPE_1__*) ;
 int manager_flip_auto_status (TYPE_1__*,int) ;
 int manager_invalidate_startup_units (TYPE_1__*) ;
 int manager_notify_finished (TYPE_1__*) ;
 int manager_set_first_boot (TYPE_1__*,int) ;
 scalar_t__ now (int ) ;
 int sd_event_source_set_time (scalar_t__,scalar_t__) ;

void manager_check_finished(Manager *m) {
        assert(m);

        if (MANAGER_IS_RELOADING(m))
                return;


        if (!MANAGER_IS_RUNNING(m))
                return;

        manager_check_basic_target(m);

        if (hashmap_size(m->jobs) > 0) {
                if (m->jobs_in_progress_event_source)

                        (void) sd_event_source_set_time(m->jobs_in_progress_event_source, now(CLOCK_MONOTONIC) + JOBS_IN_PROGRESS_WAIT_USEC);

                return;
        }

        manager_flip_auto_status(m, 0);


        manager_close_idle_pipe(m);


        m->confirm_spawn = ((void*)0);


        manager_close_ask_password(m);


        manager_set_first_boot(m, 0);

        if (MANAGER_IS_FINISHED(m))
                return;

        dual_timestamp_get(m->timestamps + MANAGER_TIMESTAMP_FINISH);

        manager_notify_finished(m);

        manager_invalidate_startup_units(m);
}
