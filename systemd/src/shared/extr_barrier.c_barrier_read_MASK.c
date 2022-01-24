#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
typedef  int ssize_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_6__ {scalar_t__ barriers; int /*<<< orphan*/ * pipe; int /*<<< orphan*/  them; } ;
typedef  TYPE_1__ Barrier ;

/* Variables and functions */
 scalar_t__ BARRIER_ABORTION ; 
 scalar_t__ BARRIER_THEY_ABORTED ; 
 void* BARRIER_WE_ABORTED ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLNVAL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (struct pollfd*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(Barrier *b, int64_t comp) {
        if (FUNC3(b))
                return false;

        while (b->barriers > comp) {
                struct pollfd pfd[2] = {
                        { .fd = b->pipe[0] >= 0 ? b->pipe[0] : b->pipe[1],
                          .events = POLLHUP },
                        { .fd = b->them,
                          .events = POLLIN }};
                uint64_t buf;
                int r;

                r = FUNC4(pfd, 2, -1);
                if (r < 0 && FUNC0(errno, EAGAIN, EINTR))
                        continue;
                else if (r < 0)
                        goto error;

                if (pfd[1].revents) {
                        ssize_t len;

                        /* events on @them signal new data for us */
                        len = FUNC5(b->them, &buf, sizeof(buf));
                        if (len < 0 && FUNC0(errno, EAGAIN, EINTR))
                                continue;

                        if (len != sizeof(buf))
                                goto error;
                } else if (pfd[0].revents & (POLLHUP | POLLERR | POLLNVAL))
                        /* POLLHUP on the pipe tells us the other side exited.
                         * We treat this as implicit abortion. But we only
                         * handle it if there's no event on the eventfd. This
                         * guarantees that exit-abortions do not overwrite real
                         * barriers. */
                        buf = BARRIER_ABORTION;
                else
                        continue;

                /* lock if they aborted */
                if (buf >= (uint64_t)BARRIER_ABORTION) {
                        if (FUNC1(b))
                                b->barriers = BARRIER_WE_ABORTED;
                        else
                                b->barriers = BARRIER_THEY_ABORTED;
                } else if (!FUNC2(b))
                        b->barriers -= buf;
        }

        return !FUNC3(b);

error:
        /* If there is an unexpected error, we have to make this fatal. There
         * is no way we can recover from sync-errors. Therefore, we close the
         * pipe-ends and treat this as abortion. The other end will notice the
         * pipe-close and treat it as abortion, too. */

        FUNC6(b->pipe);
        b->barriers = BARRIER_WE_ABORTED;
        return false;
}