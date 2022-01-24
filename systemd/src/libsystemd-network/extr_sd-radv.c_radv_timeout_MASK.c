#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int usec_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int lifetime; scalar_t__ ra_sent; int /*<<< orphan*/  event_priority; int /*<<< orphan*/  timeout_event_source; struct TYPE_11__* event; } ;
typedef  TYPE_1__ sd_radv ;
typedef  TYPE_1__ sd_event_source ;

/* Variables and functions */
 int FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  MSEC_PER_SEC ; 
 int SD_RADV_DEFAULT_MAX_TIMEOUT_USEC ; 
 int SD_RADV_DEFAULT_MIN_TIMEOUT_USEC ; 
 scalar_t__ SD_RADV_MAX_INITIAL_RTR_ADVERTISEMENTS ; 
 int SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int (*) (TYPE_1__*,int /*<<< orphan*/ ,void*),TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(sd_event_source *s, uint64_t usec, void *userdata) {
        int r;
        sd_radv *ra = userdata;
        usec_t min_timeout = SD_RADV_DEFAULT_MIN_TIMEOUT_USEC;
        usec_t max_timeout = SD_RADV_DEFAULT_MAX_TIMEOUT_USEC;
        usec_t time_now, timeout;
        char time_string[FORMAT_TIMESPAN_MAX];

        FUNC0(s);
        FUNC0(ra);
        FUNC0(ra->event);

        r = FUNC8(ra->event, FUNC1(), &time_now);
        if (r < 0)
                goto fail;

        r = FUNC7(ra, NULL, ra->lifetime);
        if (r < 0)
                FUNC5(r, "Unable to send Router Advertisement: %m");

        /* RFC 4861, Section 6.2.4, sending initial Router Advertisements */
        if (ra->ra_sent < SD_RADV_MAX_INITIAL_RTR_ADVERTISEMENTS) {
                max_timeout = SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC;
                min_timeout = SD_RADV_MAX_INITIAL_RTR_ADVERT_INTERVAL_USEC / 3;
        }

        /* RFC 4861, Section 6.2.1, lifetime must be at least MaxRtrAdvInterval,
           so lower the interval here */
        if (ra->lifetime > 0 && (ra->lifetime * USEC_PER_SEC) < max_timeout) {
                max_timeout = ra->lifetime * USEC_PER_SEC;
                min_timeout = max_timeout / 3;
        }

        timeout = FUNC6(min_timeout, max_timeout);

        FUNC4("Next Router Advertisement in %s",
                 FUNC3(time_string, FORMAT_TIMESPAN_MAX,
                                 timeout, USEC_PER_SEC));

        r = FUNC2(ra->event, &ra->timeout_event_source,
                             FUNC1(),
                             time_now + timeout, MSEC_PER_SEC,
                             radv_timeout, ra,
                             ra->event_priority, "radv-timeout", true);
        if (r < 0)
                goto fail;

        ra->ra_sent++;

        return 0;

fail:
        FUNC9(ra);

        return 0;
}