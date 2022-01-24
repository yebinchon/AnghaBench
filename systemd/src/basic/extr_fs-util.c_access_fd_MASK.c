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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int FUNC4(int fd, int mode) {
        char p[FUNC1("/proc/self/fd/") + FUNC0(fd) + 1];
        int r;

        /* Like access() but operates on an already open fd */

        FUNC3(p, "/proc/self/fd/%i", fd);
        r = FUNC2(p, mode);
        if (r < 0)
                return -errno;

        return r;
}