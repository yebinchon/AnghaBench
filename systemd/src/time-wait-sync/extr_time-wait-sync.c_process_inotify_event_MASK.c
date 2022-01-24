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
struct inotify_event {scalar_t__ wd; int mask; } ;
typedef  int /*<<< orphan*/  sd_event ;
struct TYPE_5__ {scalar_t__ run_systemd_wd; scalar_t__ run_systemd_timesync_wd; int /*<<< orphan*/  inotify_fd; } ;
typedef  TYPE_1__ ClockState ;

/* Variables and functions */
 int IN_DELETE_SELF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(sd_event *event, ClockState *sp, struct inotify_event *e) {
        if (e->wd == sp->run_systemd_wd) {
                /* Only thing we care about is seeing if we can start watching /run/systemd/timesync. */
                if (sp->run_systemd_timesync_wd < 0)
                        FUNC2(sp);
        } else if (e->wd == sp->run_systemd_timesync_wd) {
                if (e->mask & IN_DELETE_SELF) {
                        /* Somebody removed /run/systemd/timesync. */
                        (void) FUNC1(sp->inotify_fd, sp->run_systemd_timesync_wd);
                        sp->run_systemd_timesync_wd = -1;
                } else
                        /* Somebody might have created /run/systemd/timesync/synchronized. */
                        FUNC0(sp, event);
        }
}