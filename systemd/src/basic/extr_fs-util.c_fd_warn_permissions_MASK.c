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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int FUNC4(const char *path, int fd) {
        struct stat st;

        if (FUNC1(fd, &st) < 0)
                return -errno;

        /* Don't complain if we are reading something that is not a file, for example /dev/null */
        if (!FUNC0(st.st_mode))
                return 0;

        if (st.st_mode & 0111)
                FUNC3("Configuration file %s is marked executable. Please remove executable permission bits. Proceeding anyway.", path);

        if (st.st_mode & 0002)
                FUNC3("Configuration file %s is marked world-writable. Please remove world writability permission bits. Proceeding anyway.", path);

        if (FUNC2() == 1 && (st.st_mode & 0044) != 0044)
                FUNC3("Configuration file %s is marked world-inaccessible. This has no effect as configuration data is accessible via APIs without restrictions. Proceeding anyway.", path);

        return 0;
}