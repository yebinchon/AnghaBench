
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef scalar_t__ uint64_t ;
typedef int sd_event_source ;
typedef int Manager ;


 int CLOCK_MONOTONIC ;
 scalar_t__ JOBS_IN_PROGRESS_PERIOD_USEC ;
 int SD_EVENT_ONESHOT ;
 int assert (int *) ;
 int manager_print_jobs_in_progress (int *) ;
 scalar_t__ now (int ) ;
 int sd_event_source_set_enabled (int *,int ) ;
 int sd_event_source_set_time (int *,scalar_t__) ;

__attribute__((used)) static int manager_dispatch_jobs_in_progress(sd_event_source *source, usec_t usec, void *userdata) {
        Manager *m = userdata;
        int r;
        uint64_t next;

        assert(m);
        assert(source);

        manager_print_jobs_in_progress(m);

        next = now(CLOCK_MONOTONIC) + JOBS_IN_PROGRESS_PERIOD_USEC;
        r = sd_event_source_set_time(source, next);
        if (r < 0)
                return r;

        return sd_event_source_set_enabled(source, SD_EVENT_ONESHOT);
}
