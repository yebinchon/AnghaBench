
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {int timeout_idle_usec; scalar_t__ expire_event_source; } ;
struct TYPE_8__ {int event; } ;
typedef TYPE_2__ Automount ;


 int CLOCK_MONOTONIC ;
 scalar_t__ MAX (int,int ) ;
 int SD_EVENT_ONESHOT ;
 TYPE_6__* UNIT (TYPE_2__*) ;
 int USEC_PER_SEC ;
 int assert (TYPE_2__*) ;
 int automount_dispatch_expire ;
 scalar_t__ now (int ) ;
 int sd_event_add_time (int ,scalar_t__*,int ,scalar_t__,int ,int ,TYPE_2__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 int sd_event_source_set_enabled (scalar_t__,int ) ;
 int sd_event_source_set_time (scalar_t__,scalar_t__) ;

__attribute__((used)) static int automount_start_expire(Automount *a) {
        int r;
        usec_t timeout;

        assert(a);

        if (a->timeout_idle_usec == 0)
                return 0;

        timeout = now(CLOCK_MONOTONIC) + MAX(a->timeout_idle_usec/3, USEC_PER_SEC);

        if (a->expire_event_source) {
                r = sd_event_source_set_time(a->expire_event_source, timeout);
                if (r < 0)
                        return r;

                return sd_event_source_set_enabled(a->expire_event_source, SD_EVENT_ONESHOT);
        }

        r = sd_event_add_time(
                        UNIT(a)->manager->event,
                        &a->expire_event_source,
                        CLOCK_MONOTONIC, timeout, 0,
                        automount_dispatch_expire, a);
        if (r < 0)
                return r;

        (void) sd_event_source_set_description(a->expire_event_source, "automount-expire");

        return 0;
}
