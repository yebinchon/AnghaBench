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
typedef  int /*<<< orphan*/  pid_t ;
typedef  char* (* cg_migrate_callback_t ) (int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  CGroupMask ;
typedef  scalar_t__ CGroupController ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CGROUP_MASK_V1 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 scalar_t__ _CGROUP_CONTROLLER_MAX ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

int FUNC7(CGroupMask supported, const char *path, pid_t pid, cg_migrate_callback_t path_callback, void *userdata) {
        CGroupController c;
        CGroupMask done;
        int r;

        r = FUNC4(SYSTEMD_CGROUP_CONTROLLER, path, pid);
        if (r < 0)
                return r;

        r = FUNC3();
        if (r < 0)
                return r;
        if (r > 0)
                return 0;

        supported &= CGROUP_MASK_V1;
        done = 0;

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = FUNC0(c);
                const char *p = NULL;

                if (!FUNC2(supported, bit))
                        continue;

                if (FUNC2(done, bit))
                        continue;

                if (path_callback)
                        p = path_callback(bit, userdata);
                if (!p)
                        p = path;

                (void) FUNC5(FUNC6(c), p, pid);
                done |= FUNC1(bit);
        }

        return 0;
}