
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int usec_t ;
typedef int uint64_t ;
struct TYPE_11__ {int lifetime; scalar_t__ ra_sent; int event_priority; int timeout_event_source; struct TYPE_11__* event; } ;
typedef TYPE_1__ sd_radv ;
typedef TYPE_1__ sd_event_source ;


 int FORMAT_TIMESPAN_MAX ;
 int MSEC_PER_SEC ;
 int SD_RADV_DEFAULT_MAX_TIMEOUT_USEC ;
 int SD_RADV_DEFAULT_MIN_TIMEOUT_USEC ;
 scalar_t__ SD_RADV_MAX_INITIAL_RTR_ADVERTISEMENTS ;
 int SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC ;
 int USEC_PER_SEC ;
 int assert (TYPE_1__*) ;
 int clock_boottime_or_monotonic () ;
 int event_reset_time (TYPE_1__*,int *,int ,int,int ,int (*) (TYPE_1__*,int ,void*),TYPE_1__*,int ,char*,int) ;
 int format_timespan (char*,int,int,int) ;
 int log_radv (char*,int ) ;
 int log_radv_errno (int,char*) ;
 int radv_compute_timeout (int,int) ;
 int radv_send (TYPE_1__*,int *,int) ;
 int sd_event_now (TYPE_1__*,int ,int*) ;
 int sd_radv_stop (TYPE_1__*) ;

__attribute__((used)) static int radv_timeout(sd_event_source *s, uint64_t usec, void *userdata) {
        int r;
        sd_radv *ra = userdata;
        usec_t min_timeout = SD_RADV_DEFAULT_MIN_TIMEOUT_USEC;
        usec_t max_timeout = SD_RADV_DEFAULT_MAX_TIMEOUT_USEC;
        usec_t time_now, timeout;
        char time_string[FORMAT_TIMESPAN_MAX];

        assert(s);
        assert(ra);
        assert(ra->event);

        r = sd_event_now(ra->event, clock_boottime_or_monotonic(), &time_now);
        if (r < 0)
                goto fail;

        r = radv_send(ra, ((void*)0), ra->lifetime);
        if (r < 0)
                log_radv_errno(r, "Unable to send Router Advertisement: %m");


        if (ra->ra_sent < SD_RADV_MAX_INITIAL_RTR_ADVERTISEMENTS) {
                max_timeout = SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC;
                min_timeout = SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC / 3;
        }



        if (ra->lifetime > 0 && (ra->lifetime * USEC_PER_SEC) < max_timeout) {
                max_timeout = ra->lifetime * USEC_PER_SEC;
                min_timeout = max_timeout / 3;
        }

        timeout = radv_compute_timeout(min_timeout, max_timeout);

        log_radv("Next Router Advertisement in %s",
                 format_timespan(time_string, FORMAT_TIMESPAN_MAX,
                                 timeout, USEC_PER_SEC));

        r = event_reset_time(ra->event, &ra->timeout_event_source,
                             clock_boottime_or_monotonic(),
                             time_now + timeout, MSEC_PER_SEC,
                             radv_timeout, ra,
                             ra->event_priority, "radv-timeout", 1);
        if (r < 0)
                goto fail;

        ra->ra_sent++;

        return 0;

fail:
        sd_radv_stop(ra);

        return 0;
}
