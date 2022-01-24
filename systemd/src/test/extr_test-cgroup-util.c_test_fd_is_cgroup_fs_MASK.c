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
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_NOFOLLOW ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(void) {
        int fd;

        fd = FUNC3("/sys/fs/cgroup", O_RDONLY|O_DIRECTORY|O_CLOEXEC|O_NOFOLLOW);
        FUNC0(fd >= 0);
        if (FUNC2(fd)) {
                fd = FUNC4(fd);
                fd = FUNC3("/sys/fs/cgroup/systemd", O_RDONLY|O_DIRECTORY|O_CLOEXEC|O_NOFOLLOW);
                FUNC0(fd >= 0);
        }
        FUNC0(FUNC1(fd));
        fd = FUNC4(fd);
}