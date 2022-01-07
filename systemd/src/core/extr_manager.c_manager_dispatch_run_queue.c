
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ n_running_jobs; scalar_t__ n_on_console; int run_queue; } ;
typedef TYPE_1__ sd_event_source ;
struct TYPE_11__ {TYPE_1__* in_run_queue; TYPE_1__* installed; } ;
typedef TYPE_1__ Manager ;
typedef TYPE_3__ Job ;


 int assert (TYPE_1__*) ;
 int job_run_and_invalidate (TYPE_3__*) ;
 int manager_watch_idle_pipe (TYPE_1__*) ;
 int manager_watch_jobs_in_progress (TYPE_1__*) ;
 TYPE_3__* prioq_peek (int ) ;

__attribute__((used)) static int manager_dispatch_run_queue(sd_event_source *source, void *userdata) {
        Manager *m = userdata;
        Job *j;

        assert(source);
        assert(m);

        while ((j = prioq_peek(m->run_queue))) {
                assert(j->installed);
                assert(j->in_run_queue);

                (void) job_run_and_invalidate(j);
        }

        if (m->n_running_jobs > 0)
                manager_watch_jobs_in_progress(m);

        if (m->n_on_console > 0)
                manager_watch_idle_pipe(m);

        return 1;
}
