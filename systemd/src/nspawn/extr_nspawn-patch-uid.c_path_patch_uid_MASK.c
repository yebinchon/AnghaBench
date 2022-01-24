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
typedef  int /*<<< orphan*/  uid_t ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_NOATIME ; 
 int O_NOFOLLOW ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int errno ; 
 int FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int) ; 

int FUNC2(const char *path, uid_t shift, uid_t range) {
        int fd;

        fd = FUNC1(path, O_RDONLY|O_NONBLOCK|O_DIRECTORY|O_CLOEXEC|O_NOFOLLOW|O_NOATIME);
        if (fd < 0)
                return -errno;

        return FUNC0(fd, true, shift, range);
}