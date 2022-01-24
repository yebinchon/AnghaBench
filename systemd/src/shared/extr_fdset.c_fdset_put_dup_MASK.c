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
typedef  int /*<<< orphan*/  FDSet ;

/* Variables and functions */
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(FDSet *s, int fd) {
        int copy, r;

        FUNC0(*s);
        FUNC0(fd >= 0);

        copy = FUNC1(fd, F_DUPFD_CLOEXEC, 3);
        if (copy < 0)
                return -errno;

        r = FUNC2(s, copy);
        if (r < 0) {
                FUNC3(copy);
                return r;
        }

        return copy;
}