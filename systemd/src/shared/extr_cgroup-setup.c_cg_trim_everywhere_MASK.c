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
 int FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

int FUNC6(CGroupMask supported, const char *path, bool delete_root) {
        CGroupController c;
        CGroupMask done;
        int r, q;

        r = FUNC4(SYSTEMD_CGROUP_CONTROLLER, path, delete_root);
        if (r < 0)
                return r;

        q = FUNC3();
        if (q < 0)
                return q;
        if (q > 0)
                return r;

        supported &= CGROUP_MASK_V1;
        done = 0;

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = FUNC0(c);

                if (!FUNC2(supported, bit))
                        continue;

                if (FUNC2(done, bit))
                        continue;

                (void) FUNC4(FUNC5(c), path, delete_root);
                done |= FUNC1(bit);
        }

        return r;
}