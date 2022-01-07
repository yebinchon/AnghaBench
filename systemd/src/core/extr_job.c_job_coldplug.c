
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_12__ {scalar_t__ state; scalar_t__ begin_usec; scalar_t__ begin_running_usec; int timer_event_source; TYPE_2__* manager; TYPE_1__* unit; } ;
struct TYPE_11__ {int event; } ;
struct TYPE_10__ {scalar_t__ job_timeout; scalar_t__ job_running_timeout; } ;
typedef TYPE_3__ Job ;


 int CLOCK_MONOTONIC ;
 scalar_t__ JOB_WAITING ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 scalar_t__ USEC_INFINITY ;
 int assert (TYPE_3__*) ;
 int bus_job_coldplug_bus_track (TYPE_3__*) ;
 int job_add_to_gc_queue (TYPE_3__*) ;
 int job_add_to_run_queue (TYPE_3__*) ;
 int job_dispatch_timer ;
 int log_debug_errno (int,char*) ;
 int sd_event_add_time (int ,int *,int ,scalar_t__,int ,int ,TYPE_3__*) ;
 int sd_event_source_set_description (int ,char*) ;
 int sd_event_source_unref (int ) ;
 scalar_t__ timestamp_is_set (scalar_t__) ;
 scalar_t__ usec_add (scalar_t__,scalar_t__) ;

int job_coldplug(Job *j) {
        int r;
        usec_t timeout_time = USEC_INFINITY;

        assert(j);



        (void) bus_job_coldplug_bus_track(j);

        if (j->state == JOB_WAITING)
                job_add_to_run_queue(j);


        job_add_to_gc_queue(j);



        if (j->begin_usec == 0)
                return 0;

        if (j->unit->job_timeout != USEC_INFINITY)
                timeout_time = usec_add(j->begin_usec, j->unit->job_timeout);

        if (timestamp_is_set(j->begin_running_usec))
                timeout_time = MIN(timeout_time, usec_add(j->begin_running_usec, j->unit->job_running_timeout));

        if (timeout_time == USEC_INFINITY)
                return 0;

        j->timer_event_source = sd_event_source_unref(j->timer_event_source);

        r = sd_event_add_time(
                        j->manager->event,
                        &j->timer_event_source,
                        CLOCK_MONOTONIC,
                        timeout_time, 0,
                        job_dispatch_timer, j);
        if (r < 0)
                log_debug_errno(r, "Failed to restart timeout for job: %m");

        (void) sd_event_source_set_description(j->timer_event_source, "job-timeout");

        return r;
}
