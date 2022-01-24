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
 char const* SYSTEMD_CGROUP_CONTROLLER ; 
 scalar_t__ _CGROUP_CONTROLLER_MAX ; 
 int FUNC3 () ; 
 int FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*,int) ; 
 char* FUNC6 (scalar_t__) ; 

int FUNC7(CGroupMask supported, CGroupMask mask, const char *path) {
        CGroupController c;
        CGroupMask done;
        bool created;
        int r;

        /* This one will create a cgroup in our private tree, but also
         * duplicate it in the trees specified in mask, and remove it
         * in all others.
         *
         * Returns 0 if the group already existed in the systemd hierarchy,
         * 1 on success, negative otherwise.
         */

        /* First create the cgroup in our own hierarchy. */
        r = FUNC4(SYSTEMD_CGROUP_CONTROLLER, path);
        if (r < 0)
                return r;
        created = r;

        /* If we are in the unified hierarchy, we are done now */
        r = FUNC3();
        if (r < 0)
                return r;
        if (r > 0)
                return created;

        supported &= CGROUP_MASK_V1;
        mask = FUNC1(mask);
        done = 0;

        /* Otherwise, do the same in the other hierarchies */
        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                CGroupMask bit = FUNC0(c);
                const char *n;

                if (!FUNC2(supported, bit))
                        continue;

                if (FUNC2(done, bit))
                        continue;

                n = FUNC6(c);
                if (FUNC2(mask, bit))
                        (void) FUNC4(n, path);
                else
                        (void) FUNC5(n, path, true);

                done |= FUNC1(bit);
        }

        return created;
}