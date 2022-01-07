
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_6__ {int sync_scheduled; scalar_t__ sync_interval_usec; int sync_event_source; int event; } ;
typedef TYPE_1__ Server ;


 int CLOCK_MONOTONIC ;
 int LOG_CRIT ;
 int SD_EVENT_ONESHOT ;
 int SD_EVENT_PRIORITY_IMPORTANT ;
 int assert (TYPE_1__*) ;
 int sd_event_add_time (int ,int *,int ,int ,int ,int ,TYPE_1__*) ;
 int sd_event_now (int ,int ,int *) ;
 int sd_event_source_set_enabled (int ,int ) ;
 int sd_event_source_set_priority (int ,int ) ;
 int sd_event_source_set_time (int ,int ) ;
 int server_dispatch_sync ;
 int server_sync (TYPE_1__*) ;

int server_schedule_sync(Server *s, int priority) {
        int r;

        assert(s);

        if (priority <= LOG_CRIT) {

                server_sync(s);
                return 0;
        }

        if (s->sync_scheduled)
                return 0;

        if (s->sync_interval_usec > 0) {
                usec_t when;

                r = sd_event_now(s->event, CLOCK_MONOTONIC, &when);
                if (r < 0)
                        return r;

                when += s->sync_interval_usec;

                if (!s->sync_event_source) {
                        r = sd_event_add_time(
                                        s->event,
                                        &s->sync_event_source,
                                        CLOCK_MONOTONIC,
                                        when, 0,
                                        server_dispatch_sync, s);
                        if (r < 0)
                                return r;

                        r = sd_event_source_set_priority(s->sync_event_source, SD_EVENT_PRIORITY_IMPORTANT);
                } else {
                        r = sd_event_source_set_time(s->sync_event_source, when);
                        if (r < 0)
                                return r;

                        r = sd_event_source_set_enabled(s->sync_event_source, SD_EVENT_ONESHOT);
                }
                if (r < 0)
                        return r;

                s->sync_scheduled = 1;
        }

        return 0;
}
