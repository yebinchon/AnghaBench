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

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  POLLOUT ; 
 int /*<<< orphan*/  SEND_TIMEOUT_USEC ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,void*,size_t) ; 

__attribute__((used)) static int FUNC3(int fd, void *message, size_t length) {
        int r;

        FUNC0(fd >= 0);
        FUNC0(message);

        for (;;) {
                if (FUNC2(fd, message, length) >= 0)
                        return 0;

                if (errno == EINTR)
                        continue;

                if (errno != EAGAIN)
                        return -errno;

                r = FUNC1(fd, POLLOUT, SEND_TIMEOUT_USEC);
                if (r < 0)
                        return r;
                if (r == 0)
                        return -ETIMEDOUT;
        }
}