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
typedef  char* (* cg_migrate_callback_t ) (int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  CGroupMask ;
typedef  scalar_t__ CGroupController ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CGROUP_MASK_V1 ; 
 int /*<<< orphan*/  CGROUP_REMOVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 scalar_t__ _CGROUP_CONTROLLER_MAX ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 

int FUNC8(CGroupMask supported, const char *from, const char *to, cg_migrate_callback_t to_callback, void *userdata) {
        CGroupController c;
        CGroupMask done;
        int r = 0, q;

        if (!FUNC7(from, to))  {
                r = FUNC4(SYSTEMD_CGROUP_CONTROLLER, from, SYSTEMD_CGROUP_CONTROLLER, to, CGROUP_REMOVE);
                if (r < 0)
                        return r;
        }

        q = FUNC3();
        if (q < 0)
                return q;
        if (q > 0)
                return r;

        supported &= CGROUP_MASK_V1;
        done = 0;

        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = FUNC0(c);
                const char *p = NULL;

                if (!FUNC2(supported, bit))
                        continue;

                if (FUNC2(done, bit))
                        continue;

                if (to_callback)
                        p = to_callback(bit, userdata);
                if (!p)
                        p = to;

                (void) FUNC5(SYSTEMD_CGROUP_CONTROLLER, to, FUNC6(c), p, 0);
                done |= FUNC1(bit);
        }

        return r;
}