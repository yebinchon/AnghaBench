#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ hostname_fd; int /*<<< orphan*/  hostname_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Server ;

/* Variables and functions */
 int EPERM ; 
 int O_CLOEXEC ; 
 int O_NOCTTY ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 scalar_t__ SD_EVENT_PRIORITY_IMPORTANT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dispatch_hostname_change ; 
 int errno ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(Server *s) {
        int r;

        FUNC0(s);

        s->hostname_fd = FUNC3("/proc/sys/kernel/hostname",
                              O_RDONLY|O_CLOEXEC|O_NONBLOCK|O_NOCTTY);
        if (s->hostname_fd < 0)
                return FUNC1(errno, "Failed to open /proc/sys/kernel/hostname: %m");

        r = FUNC5(s->event, &s->hostname_event_source, s->hostname_fd, 0, dispatch_hostname_change, s);
        if (r < 0) {
                /* kernels prior to 3.2 don't support polling this file. Ignore
                 * the failure. */
                if (r == -EPERM) {
                        FUNC2(r, "Failed to register hostname fd in event loop, ignoring: %m");
                        s->hostname_fd = FUNC4(s->hostname_fd);
                        return 0;
                }

                return FUNC1(r, "Failed to register hostname fd in event loop: %m");
        }

        r = FUNC6(s->hostname_event_source, SD_EVENT_PRIORITY_IMPORTANT-10);
        if (r < 0)
                return FUNC1(r, "Failed to adjust priority of host name event source: %m");

        return 0;
}