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
 int ENOTTY ; 
 int /*<<< orphan*/  FS_IOC_GETFLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC5(int fd, unsigned *ret) {
        struct stat st;

        FUNC2(fd >= 0);

        if (FUNC3(fd, &st) < 0)
                return -errno;

        if (!FUNC0(st.st_mode) && !FUNC1(st.st_mode))
                return -ENOTTY;

        if (FUNC4(fd, FS_IOC_GETFLAGS, ret) < 0)
                return -errno;

        return 0;
}