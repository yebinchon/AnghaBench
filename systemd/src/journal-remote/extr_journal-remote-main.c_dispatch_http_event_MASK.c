#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_3__ {int /*<<< orphan*/  timer_event; int /*<<< orphan*/  daemon; } ;
typedef  int /*<<< orphan*/  MHD_UNSIGNED_LONG_LONG ;
typedef  TYPE_1__ MHDDaemonWrapper ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int MHD_NO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_EVENT_ON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(sd_event_source *event,
                               int fd,
                               uint32_t revents,
                               void *userdata) {
        MHDDaemonWrapper *d = userdata;
        int r;
        MHD_UNSIGNED_LONG_LONG timeout = ULLONG_MAX;

        FUNC3(d);

        r = FUNC1(d->daemon);
        if (r == MHD_NO)
                // FIXME: unregister daemon
                return FUNC4(FUNC2(EINVAL),
                                       "MHD_run failed!");
        if (FUNC0(d->daemon, &timeout) == MHD_NO)
                timeout = ULLONG_MAX;

        r = FUNC7(d->timer_event, timeout);
        if (r < 0) {
                FUNC5(r, "Unable to set event loop timeout: %m, this may result in indefinite blocking!");
                return 1;
        }

        r = FUNC6(d->timer_event, SD_EVENT_ON);
        if (r < 0)
                FUNC5(r, "Unable to enable timer_event: %m, this may result in indefinite blocking!");

        return 1; /* work to do */
}