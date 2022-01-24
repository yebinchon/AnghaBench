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
struct TYPE_7__ {int /*<<< orphan*/  mount_event_source; int /*<<< orphan*/  event; scalar_t__ mount_monitor; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 scalar_t__ SD_EVENT_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,int) ; 
 int FUNC5 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  mount_dispatch_io ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC13(Manager *m) {
        int r;

        FUNC0(m);

        FUNC3(0);

        if (!m->mount_monitor) {
                int fd;

                m->mount_monitor = FUNC7();
                if (!m->mount_monitor) {
                        FUNC2();
                        goto fail;
                }

                r = FUNC4(m->mount_monitor, 1);
                if (r < 0) {
                        FUNC1(r, "Failed to enable watching of kernel mount events: %m");
                        goto fail;
                }

                r = FUNC5(m->mount_monitor, 1, NULL);
                if (r < 0) {
                        FUNC1(r, "Failed to enable watching of userspace mount events: %m");
                        goto fail;
                }

                /* mnt_unref_monitor() will close the fd */
                fd = r = FUNC6(m->mount_monitor);
                if (r < 0) {
                        FUNC1(r, "Failed to acquire watch file descriptor: %m");
                        goto fail;
                }

                r = FUNC10(m->event, &m->mount_event_source, fd, EPOLLIN, mount_dispatch_io, m);
                if (r < 0) {
                        FUNC1(r, "Failed to watch mount file descriptor: %m");
                        goto fail;
                }

                r = FUNC12(m->mount_event_source, SD_EVENT_PRIORITY_NORMAL-10);
                if (r < 0) {
                        FUNC1(r, "Failed to adjust mount watch priority: %m");
                        goto fail;
                }

                (void) FUNC11(m->mount_event_source, "mount-monitor-dispatch");
        }

        r = FUNC8(m, false);
        if (r < 0)
                goto fail;

        return;

fail:
        FUNC9(m);
}