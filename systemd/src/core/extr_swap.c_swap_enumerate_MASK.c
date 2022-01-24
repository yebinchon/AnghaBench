#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  swap_event_source; scalar_t__ proc_swaps; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EPOLLPRI ; 
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  swap_dispatch_io ; 
 int FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(Manager *m) {
        int r;

        FUNC0(m);

        if (!m->proc_swaps) {
                m->proc_swaps = FUNC2("/proc/swaps", "re");
                if (!m->proc_swaps) {
                        if (errno == ENOENT)
                                FUNC3(errno, "Not swap enabled, skipping enumeration.");
                        else
                                FUNC5(errno, "Failed to open /proc/swaps, ignoring: %m");

                        return;
                }

                r = FUNC6(m->event, &m->swap_event_source, FUNC1(m->proc_swaps), EPOLLPRI, swap_dispatch_io, m);
                if (r < 0) {
                        FUNC4(r, "Failed to watch /proc/swaps: %m");
                        goto fail;
                }

                /* Dispatch this before we dispatch SIGCHLD, so that
                 * we always get the events from /proc/swaps before
                 * the SIGCHLD of /sbin/swapon. */
                r = FUNC8(m->swap_event_source, SD_EVENT_PRIORITY_NORMAL-10);
                if (r < 0) {
                        FUNC4(r, "Failed to change /proc/swaps priority: %m");
                        goto fail;
                }

                (void) FUNC7(m->swap_event_source, "swap-proc");
        }

        r = FUNC9(m, false);
        if (r < 0)
                goto fail;

        return;

fail:
        FUNC10(m);
}