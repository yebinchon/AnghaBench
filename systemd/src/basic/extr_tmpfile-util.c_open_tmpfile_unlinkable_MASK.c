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
 int EINVAL ; 
 int O_EXCL ; 
 int O_TMPFILE ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char const*,int,int) ; 
 char* FUNC3 (char const*,char*) ; 
 int FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(const char *directory, int flags) {
        char *p;
        int fd, r;

        if (!directory) {
                r = FUNC4(&directory);
                if (r < 0)
                        return r;
        } else if (FUNC0(directory))
                return -EINVAL;

        /* Returns an unlinked temporary file that cannot be linked into the file system anymore */

        /* Try O_TMPFILE first, if it is supported */
        fd = FUNC2(directory, flags|O_TMPFILE|O_EXCL, S_IRUSR|S_IWUSR);
        if (fd >= 0)
                return fd;

        /* Fall back to unguessable name + unlinking */
        p = FUNC3(directory, "/systemd-tmp-XXXXXX");

        fd = FUNC1(p);
        if (fd < 0)
                return fd;

        (void) FUNC5(p);

        return fd;
}