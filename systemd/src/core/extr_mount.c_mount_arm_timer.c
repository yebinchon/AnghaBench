
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {scalar_t__ timer_event_source; } ;
struct TYPE_8__ {int event; } ;
typedef TYPE_2__ Mount ;


 int CLOCK_MONOTONIC ;
 int SD_EVENT_ONESHOT ;
 TYPE_6__* UNIT (TYPE_2__*) ;
 int USEC_INFINITY ;
 int assert (TYPE_2__*) ;
 int mount_dispatch_timer ;
 int sd_event_add_time (int ,scalar_t__*,int ,int ,int ,int ,TYPE_2__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 int sd_event_source_set_time (scalar_t__,int ) ;

__attribute__((used)) static int mount_arm_timer(Mount *m, usec_t usec) {
        int r;

        assert(m);

        if (m->timer_event_source) {
                r = sd_event_source_set_time(m->timer_event_source, usec);
                if (r < 0)
                        return r;

                return sd_event_source_set_enabled(m->timer_event_source, SD_EVENT_ONESHOT);
        }

        if (usec == USEC_INFINITY)
                return 0;

        r = sd_event_add_time(
                        UNIT(m)->manager->event,
                        &m->timer_event_source,
                        CLOCK_MONOTONIC,
                        usec, 0,
                        mount_dispatch_timer, m);
        if (r < 0)
                return r;

        (void) sd_event_source_set_description(m->timer_event_source, "mount-timer");

        return 0;
}
