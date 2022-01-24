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
 int O_NOCTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(int flags, int nfd) {
        int fd;

        FUNC0(nfd >= 0);

        fd = FUNC2("/dev/null", flags|O_NOCTTY);
        if (fd < 0)
                return -errno;

        return FUNC1(fd, nfd, false);
}