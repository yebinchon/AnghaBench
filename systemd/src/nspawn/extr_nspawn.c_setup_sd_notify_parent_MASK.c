#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  int /*<<< orphan*/  sd_event ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  nspawn_dispatch_notify_fd ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(sd_event *event, int fd, pid_t *inner_child_pid, sd_event_source **notify_event_source) {
        int r;

        r = FUNC1(event, notify_event_source, fd, EPOLLIN, nspawn_dispatch_notify_fd, inner_child_pid);
        if (r < 0)
                return FUNC0(r, "Failed to allocate notify event source: %m");

        (void) FUNC2(*notify_event_source, "nspawn-notify");

        return 0;
}