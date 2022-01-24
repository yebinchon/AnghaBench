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
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  F_OK ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 
 int errno ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char const*) ; 

__attribute__((used)) static int FUNC8(const char *controller) {
        int r;

        FUNC0(controller);

        /* Checks whether a specific controller is accessible,
         * i.e. its hierarchy mounted. In the unified hierarchy all
         * controllers are considered accessible, except for the named
         * hierarchies */

        if (!FUNC2(controller))
                return -EINVAL;

        r = FUNC1();
        if (r < 0)
                return r;
        if (r > 0) {
                /* We don't support named hierarchies if we are using
                 * the unified hierarchy. */

                if (FUNC6(controller, SYSTEMD_CGROUP_CONTROLLER))
                        return 0;

                if (FUNC5(controller, "name="))
                        return -EOPNOTSUPP;

        } else {
                const char *cc, *dn;

                dn = FUNC3(controller);
                cc = FUNC7("/sys/fs/cgroup/", dn);

                if (FUNC4(cc, F_OK) < 0)
                        return -errno;
        }

        return 0;
}