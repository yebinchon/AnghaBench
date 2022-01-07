
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_5__ {int event_priority; int timer_event_source; int event; } ;
typedef TYPE_1__ sd_ipv4acd ;


 int assert (TYPE_1__*) ;
 int assert_se (int) ;
 int clock_boottime_or_monotonic () ;
 int event_reset_time (int ,int *,int ,int,int ,int ,TYPE_1__*,int ,char*,int) ;
 int ipv4acd_on_timeout ;
 scalar_t__ random_u64 () ;
 scalar_t__ sd_event_now (int ,int ,int*) ;

__attribute__((used)) static int ipv4acd_set_next_wakeup(sd_ipv4acd *acd, usec_t usec, usec_t random_usec) {
        usec_t next_timeout, time_now;

        assert(acd);

        next_timeout = usec;

        if (random_usec > 0)
                next_timeout += (usec_t) random_u64() % random_usec;

        assert_se(sd_event_now(acd->event, clock_boottime_or_monotonic(), &time_now) >= 0);

        return event_reset_time(acd->event, &acd->timer_event_source,
                                clock_boottime_or_monotonic(),
                                time_now + next_timeout, 0,
                                ipv4acd_on_timeout, acd,
                                acd->event_priority, "ipv4acd-timer", 1);
}
