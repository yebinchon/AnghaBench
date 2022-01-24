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
typedef  int /*<<< orphan*/  Socket ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int) ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 

__attribute__((used)) static int FUNC3(Socket *s, int fd) {
        int cfd;

        FUNC2(*s);
        FUNC2(fd >= 0);

        cfd = FUNC1(fd, NULL, NULL, SOCK_NONBLOCK|SOCK_CLOEXEC);
        if (cfd < 0)
                /* Convert transient network errors into clean and well-defined EAGAIN */
                return FUNC0(errno) ? -EAGAIN : -errno;

        return cfd;
}