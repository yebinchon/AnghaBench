
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_5__ {int watchdog_event_source; int timer_event_source; } ;
typedef TYPE_1__ Service ;


 int CLOCK_MONOTONIC ;
 scalar_t__ IN_SET (int ,int ,int ) ;
 int USEC_INFINITY ;
 int assert (TYPE_1__*) ;
 int now (int ) ;
 int service_extend_event_source_timeout (TYPE_1__*,int ,int ) ;
 int usec_add (int ,int ) ;

__attribute__((used)) static void service_extend_timeout(Service *s, usec_t extend_timeout_usec) {
        usec_t extended;

        assert(s);

        if (IN_SET(extend_timeout_usec, 0, USEC_INFINITY))
                return;

        extended = usec_add(now(CLOCK_MONOTONIC), extend_timeout_usec);

        service_extend_event_source_timeout(s, s->timer_event_source, extended);
        service_extend_event_source_timeout(s, s->watchdog_event_source, extended);
}
