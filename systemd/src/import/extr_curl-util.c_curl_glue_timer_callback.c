
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_6__ {scalar_t__ timer; int event; } ;
typedef TYPE_1__ CurlGlue ;
typedef TYPE_1__ CURLM ;


 int SD_EVENT_OFF ;
 int SD_EVENT_ONESHOT ;
 int USEC_PER_MSEC ;
 int assert (TYPE_1__*) ;
 int clock_boottime_or_monotonic () ;
 int curl_glue_on_timer ;
 int now (int ) ;
 scalar_t__ sd_event_add_time (int ,scalar_t__*,int ,int,int ,int ,TYPE_1__*) ;
 int sd_event_source_set_description (scalar_t__,char*) ;
 scalar_t__ sd_event_source_set_enabled (scalar_t__,int ) ;
 scalar_t__ sd_event_source_set_time (scalar_t__,int) ;

__attribute__((used)) static int curl_glue_timer_callback(CURLM *curl, long timeout_ms, void *userdata) {
        CurlGlue *g = userdata;
        usec_t usec;

        assert(curl);
        assert(g);

        if (timeout_ms < 0) {
                if (g->timer) {
                        if (sd_event_source_set_enabled(g->timer, SD_EVENT_OFF) < 0)
                                return -1;
                }

                return 0;
        }

        usec = now(clock_boottime_or_monotonic()) + (usec_t) timeout_ms * USEC_PER_MSEC + USEC_PER_MSEC - 1;

        if (g->timer) {
                if (sd_event_source_set_time(g->timer, usec) < 0)
                        return -1;

                if (sd_event_source_set_enabled(g->timer, SD_EVENT_ONESHOT) < 0)
                        return -1;
        } else {
                if (sd_event_add_time(g->event, &g->timer, clock_boottime_or_monotonic(), usec, 0, curl_glue_on_timer, g) < 0)
                        return -1;

                (void) sd_event_source_set_description(g->timer, "curl-timer");
        }

        return 0;
}
