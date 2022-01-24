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
 int ACQUIRE_TERMINAL_FORCE ; 
 int ACQUIRE_TERMINAL_PERMISSIVE ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 () ; 
 int FUNC4 (int,int,int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void) {
        int fd, r;

        /* Make /dev/console the controlling terminal and stdin/stdout/stderr, if we can. If we can't use
         * /dev/null instead. This is particularly useful if /dev/console is turned off, e.g. if console=null
         * is specified on the kernel command line. */

        fd = FUNC0("/dev/console", ACQUIRE_TERMINAL_FORCE|ACQUIRE_TERMINAL_PERMISSIVE, USEC_INFINITY);
        if (fd < 0) {
                FUNC2(fd, "Failed to acquire terminal, using /dev/null stdin/stdout/stderr instead: %m");

                r = FUNC3();
                if (r < 0)
                        return FUNC1(r, "Failed to make /dev/null stdin/stdout/stderr: %m");

        } else {
                r = FUNC5(fd, true);
                if (r < 0)
                        FUNC2(r, "Failed to reset terminal, ignoring: %m");

                r = FUNC4(fd, fd, fd); /* This invalidates 'fd' both on success and on failure. */
                if (r < 0)
                        return FUNC1(r, "Failed to make terminal stdin/stdout/stderr: %m");
        }

        FUNC6();
        return 0;
}