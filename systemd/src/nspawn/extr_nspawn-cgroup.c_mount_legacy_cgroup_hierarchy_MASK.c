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
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MS_BIND ; 
 int MS_NODEV ; 
 int MS_NOEXEC ; 
 int MS_NOSUID ; 
 int MS_RDONLY ; 
 int MS_REMOUNT ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER_HYBRID ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER_LEGACY ; 
 int FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char const*,char const*,int,char const*) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC7(
                const char *dest,
                const char *controller,
                const char *hierarchy,
                bool read_only) {

        const char *to, *fstype, *opts;
        int r;

        to = FUNC6(FUNC4(dest), "/sys/fs/cgroup/", hierarchy);

        r = FUNC3(to, dest, 0);
        if (r < 0 && r != -ENOENT)
                return FUNC0(r, "Failed to determine if %s is mounted already: %m", to);
        if (r > 0)
                return 0;

        (void) FUNC1(to, 0755);

        /* The superblock mount options of the mount point need to be
         * identical to the hosts', and hence writable... */
        if (FUNC5(controller, SYSTEMD_CGROUP_CONTROLLER_HYBRID)) {
                fstype = "cgroup2";
                opts = NULL;
        } else if (FUNC5(controller, SYSTEMD_CGROUP_CONTROLLER_LEGACY)) {
                fstype = "cgroup";
                opts = "none,name=systemd,xattr";
        } else {
                fstype = "cgroup";
                opts = controller;
        }

        r = FUNC2(LOG_ERR, "cgroup", to, fstype, MS_NOSUID|MS_NOEXEC|MS_NODEV, opts);
        if (r < 0)
                return r;

        /* ... hence let's only make the bind mount read-only, not the superblock. */
        if (read_only) {
                r = FUNC2(LOG_ERR, NULL, to, NULL,
                                  MS_BIND|MS_REMOUNT|MS_NOSUID|MS_NOEXEC|MS_NODEV|MS_RDONLY, NULL);
                if (r < 0)
                        return r;
        }

        return 1;
}