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
struct inotify_data {scalar_t__ buffer_filled; scalar_t__ fd; int /*<<< orphan*/  priority; int /*<<< orphan*/  wd; int /*<<< orphan*/  inodes; } ;
struct TYPE_5__ {int /*<<< orphan*/  epoll_fd; int /*<<< orphan*/  inotify_data; int /*<<< orphan*/  inotify_data_buffered; } ;
typedef  TYPE_1__ sd_event ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLL_CTL_DEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inotify_data*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  buffered ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (struct inotify_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 struct inotify_data* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(sd_event *e, struct inotify_data *d) {
        FUNC1(e);

        if (!d)
                return;

        FUNC1(FUNC6(d->inodes));
        FUNC1(FUNC6(d->wd));

        if (d->buffer_filled > 0)
                FUNC0(buffered, e->inotify_data_buffered, d);

        FUNC5(d->inodes);
        FUNC5(d->wd);

        FUNC2(FUNC7(e->inotify_data, &d->priority) == d);

        if (d->fd >= 0) {
                if (FUNC3(e->epoll_fd, EPOLL_CTL_DEL, d->fd, NULL) < 0)
                        FUNC8(errno, "Failed to remove inotify fd from epoll, ignoring: %m");

                FUNC9(d->fd);
        }
        FUNC4(d);
}