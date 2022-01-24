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
 int O_NOCTTY ; 
 int O_WRONLY ; 
 int STDERR_FILENO ; 
 int /*<<< orphan*/  always_reopen_console ; 
 int console_fd ; 
 int FUNC0 (int) ; 
 int FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(void) {

        if (!always_reopen_console) {
                console_fd = STDERR_FILENO;
                return 0;
        }

        if (console_fd < 3) {
                int fd;

                fd = FUNC1("/dev/console", O_WRONLY|O_NOCTTY|O_CLOEXEC);
                if (fd < 0)
                        return fd;

                console_fd = FUNC0(fd);
        }

        return 0;
}