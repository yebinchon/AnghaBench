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
 int /*<<< orphan*/  AT_SYMLINK_FOLLOW ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MS_NODEV ; 
 int MS_NOEXEC ; 
 int MS_NOSUID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int errno ; 
 int FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char const*,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,char*) ; 

__attribute__((used)) static int FUNC8(const char *dest) {
        const char *p;
        int r;

        FUNC2(dest);

        p = FUNC7(dest, "/sys/fs/cgroup");

        (void) FUNC4(p, 0755);

        r = FUNC6(p, dest, AT_SYMLINK_FOLLOW);
        if (r < 0)
                return FUNC3(r, "Failed to determine if %s is mounted already: %m", p);
        if (r > 0) {
                p = FUNC7(dest, "/sys/fs/cgroup/cgroup.procs");
                if (FUNC1(p, F_OK) >= 0)
                        return 0;
                if (errno != ENOENT)
                        return FUNC3(errno, "Failed to determine if mount point %s contains the unified cgroup hierarchy: %m", p);

                return FUNC3(FUNC0(EINVAL),
                                       "%s is already mounted but not a unified cgroup hierarchy. Refusing.", p);
        }

        return FUNC5(LOG_ERR, "cgroup", p, "cgroup2", MS_NOSUID|MS_NOEXEC|MS_NODEV, NULL);
}