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
struct TYPE_5__ {scalar_t__ hostname_fd; int /*<<< orphan*/  full_hostname; int /*<<< orphan*/  mdns_hostname; int /*<<< orphan*/  llmnr_hostname; int /*<<< orphan*/  hostname_event_source; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int EPERM ; 
 int O_CLOEXEC ; 
 int O_NOCTTY ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_hostname_change ; 
 scalar_t__ FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC11(Manager *m) {
        int r;

        FUNC0(m);

        m->hostname_fd = FUNC7("/proc/sys/kernel/hostname",
                              O_RDONLY|O_CLOEXEC|O_NONBLOCK|O_NOCTTY);
        if (m->hostname_fd < 0) {
                FUNC5(errno, "Failed to watch hostname: %m");
                return 0;
        }

        r = FUNC9(m->event, &m->hostname_event_source, m->hostname_fd, 0, on_hostname_change, m);
        if (r < 0) {
                if (r == -EPERM)
                        /* kernels prior to 3.2 don't support polling this file. Ignore the failure. */
                        m->hostname_fd = FUNC8(m->hostname_fd);
                else
                        return FUNC3(r, "Failed to add hostname event source: %m");
        }

        (void) FUNC10(m->hostname_event_source, "hostname");

        r = FUNC1(&m->full_hostname, &m->llmnr_hostname, &m->mdns_hostname);
        if (r < 0) {
                FUNC4("Defaulting to hostname '%s'.", FUNC2());

                r = FUNC6(&m->full_hostname, &m->llmnr_hostname, &m->mdns_hostname);
                if (r < 0)
                        return r;
        } else
                FUNC4("Using system hostname '%s'.", m->full_hostname);

        return 0;
}