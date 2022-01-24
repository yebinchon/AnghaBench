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
typedef  scalar_t__ usec_t ;
struct timespec {int dummy; } ;
struct pollfd {int fd; int revents; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  sd_journal ;

/* Variables and functions */
 int /*<<< orphan*/  ECANCELED ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (struct pollfd*) ; 
 int POLLERR ; 
 int POLLHUP ; 
 int /*<<< orphan*/  POLLIN ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*) ; 
 scalar_t__ FUNC5 (struct pollfd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct timespec*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(sd_journal *j, int poll_fd) {
        struct pollfd pollfds[] = {
                { .fd = poll_fd, .events = POLLIN },
                { .fd = STDOUT_FILENO },
        };

        struct timespec ts;
        usec_t timeout;
        int r;

        FUNC2(*j);
        FUNC2(poll_fd >= 0);

        /* Much like sd_journal_wait() but also keeps an eye on STDOUT, and exits as soon as we see a POLLHUP on that,
         * i.e. when it is closed. */

        r = FUNC6(j, &timeout);
        if (r < 0)
                return FUNC4(r, "Failed to determine journal waiting time: %m");

        if (FUNC5(pollfds, FUNC0(pollfds),
                  timeout == USEC_INFINITY ? NULL : FUNC8(&ts, timeout), NULL) < 0) {
                if (errno == EINTR)
                        return 0;

                return FUNC4(errno, "Couldn't wait for journal event: %m");
        }

        if (pollfds[1].revents & (POLLHUP|POLLERR)) /* STDOUT has been closed? */
                return FUNC3(FUNC1(ECANCELED),
                                       "Standard output has been closed.");

        r = FUNC7(j);
        if (r < 0)
                return FUNC4(r, "Failed to process journal events: %m");

        return 0;
}