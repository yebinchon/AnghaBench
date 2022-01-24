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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,char*,char const*) ; 

int FUNC2(int fd, const char *pathname, uint32_t mask) {

        if (FUNC0(fd, pathname, mask) < 0) {
                if (errno == ENOSPC)
                        return FUNC1(errno, "Failed to add a watch for %s: inotify watch limit reached", pathname);

                return FUNC1(errno, "Failed to add a watch for %s: %m", pathname);
        }

        return 0;
}