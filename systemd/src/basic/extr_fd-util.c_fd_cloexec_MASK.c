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
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 

int FUNC2(int fd, bool cloexec) {
        int flags, nflags;

        FUNC0(fd >= 0);

        flags = FUNC1(fd, F_GETFD, 0);
        if (flags < 0)
                return -errno;

        if (cloexec)
                nflags = flags | FD_CLOEXEC;
        else
                nflags = flags & ~FD_CLOEXEC;

        if (nflags == flags)
                return 0;

        if (FUNC1(fd, F_SETFD, nflags) < 0)
                return -errno;

        return 0;
}