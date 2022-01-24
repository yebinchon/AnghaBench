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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int FD_IS_BLOCKING_PIPE ; 
 int FD_IS_NONBLOCKING_PIPE ; 
 int FD_IS_NO_PIPE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 

__attribute__((used)) static int FUNC4(int fd) {
        struct stat st;
        int flags;

        /* Checks whether the specified file descriptor refers to a pipe, and if so if O_NONBLOCK is set. */

        if (FUNC3(fd, &st) < 0)
                return -errno;

        if (!FUNC1(st.st_mode))
                return FD_IS_NO_PIPE;

        flags = FUNC2(fd, F_GETFL);
        if (flags < 0)
                return -errno;

        return FUNC0(flags, O_NONBLOCK) ? FD_IS_NONBLOCKING_PIPE : FD_IS_BLOCKING_PIPE;
}