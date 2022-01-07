
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_5__ {scalar_t__ lid_switch_ignore_event_source; int event; } ;
typedef TYPE_1__ Manager ;


 int CLOCK_MONOTONIC ;
 int assert (TYPE_1__*) ;
 int lid_switch_ignore_handler ;
 scalar_t__ now (int ) ;
 int sd_event_add_time (int ,scalar_t__*,int ,scalar_t__,int ,int ,TYPE_1__*) ;
 int sd_event_source_get_time (scalar_t__,scalar_t__*) ;
 int sd_event_source_set_time (scalar_t__,scalar_t__) ;

int manager_set_lid_switch_ignore(Manager *m, usec_t until) {
        int r;

        assert(m);

        if (until <= now(CLOCK_MONOTONIC))
                return 0;






        if (m->lid_switch_ignore_event_source) {
                usec_t u;

                r = sd_event_source_get_time(m->lid_switch_ignore_event_source, &u);
                if (r < 0)
                        return r;

                if (until <= u)
                        return 0;

                r = sd_event_source_set_time(m->lid_switch_ignore_event_source, until);
        } else
                r = sd_event_add_time(
                                m->event,
                                &m->lid_switch_ignore_event_source,
                                CLOCK_MONOTONIC,
                                until, 0,
                                lid_switch_ignore_handler, m);

        return r;
}
