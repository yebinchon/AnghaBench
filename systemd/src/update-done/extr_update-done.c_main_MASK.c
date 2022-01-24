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
struct stat {int /*<<< orphan*/  st_mtim; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 

int FUNC5(int argc, char *argv[]) {
        struct stat st;
        int r, q = 0;

        FUNC2();

        if (FUNC4("/usr", &st) < 0) {
                FUNC1(errno, "Failed to stat /usr: %m");
                return EXIT_FAILURE;
        }

        r = FUNC3();
        if (r < 0) {
                FUNC1(r, "SELinux setup failed: %m");
                return EXIT_FAILURE;
        }

        r = FUNC0("/etc/.updated", &st.st_mtim);
        q = FUNC0("/var/.updated", &st.st_mtim);

        return r < 0 || q < 0 ? EXIT_FAILURE : EXIT_SUCCESS;
}