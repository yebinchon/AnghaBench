
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ timer_event_source; TYPE_1__* manager; scalar_t__ stopping; int started; } ;
struct TYPE_6__ {int event; } ;
typedef TYPE_2__ Session ;


 int CLOCK_MONOTONIC ;
 int RELEASE_USEC ;
 int assert (TYPE_2__*) ;
 int now (int ) ;
 int release_timeout_callback ;
 int sd_event_add_time (int ,scalar_t__*,int ,int ,int ,int ,TYPE_2__*) ;
 int usec_add (int ,int ) ;

int session_release(Session *s) {
        assert(s);

        if (!s->started || s->stopping)
                return 0;

        if (s->timer_event_source)
                return 0;

        return sd_event_add_time(s->manager->event,
                                 &s->timer_event_source,
                                 CLOCK_MONOTONIC,
                                 usec_add(now(CLOCK_MONOTONIC), RELEASE_USEC), 0,
                                 release_timeout_callback, s);
}
