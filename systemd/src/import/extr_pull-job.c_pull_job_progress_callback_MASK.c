#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  y ;
typedef  scalar_t__ usec_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ curl_off_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ last_status_usec; unsigned int progress_percent; scalar_t__ start_usec; int /*<<< orphan*/  (* on_progress ) (TYPE_1__*) ;int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ PullJob ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int FORMAT_BYTES_MAX ; 
 int FORMAT_TIMESPAN_MAX ; 
 scalar_t__ USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(void *userdata, curl_off_t dltotal, curl_off_t dlnow, curl_off_t ultotal, curl_off_t ulnow) {
        PullJob *j = userdata;
        unsigned percent;
        usec_t n;

        FUNC0(j);

        if (dltotal <= 0)
                return 0;

        percent = ((100 * dlnow) / dltotal);
        n = FUNC4(CLOCK_MONOTONIC);

        if (n > j->last_status_usec + USEC_PER_SEC &&
            percent != j->progress_percent &&
            dlnow < dltotal) {
                char buf[FORMAT_TIMESPAN_MAX];

                if (n - j->start_usec > USEC_PER_SEC && dlnow > 0) {
                        char y[FORMAT_BYTES_MAX];
                        usec_t left, done;

                        done = n - j->start_usec;
                        left = (usec_t) (((double) done * (double) dltotal) / dlnow) - done;

                        FUNC3("Got %u%% of %s. %s left at %s/s.",
                                 percent,
                                 j->url,
                                 FUNC2(buf, sizeof(buf), left, USEC_PER_SEC),
                                 FUNC1(y, sizeof(y), (uint64_t) ((double) dlnow / ((double) done / (double) USEC_PER_SEC))));
                } else
                        FUNC3("Got %u%% of %s.", percent, j->url);

                j->progress_percent = percent;
                j->last_status_usec = n;

                if (j->on_progress)
                        j->on_progress(j);
        }

        return 0;
}