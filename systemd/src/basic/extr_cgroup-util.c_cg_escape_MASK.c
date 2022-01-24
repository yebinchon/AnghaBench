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
typedef  scalar_t__ CGroupController ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const,int /*<<< orphan*/ ,char,char) ; 
 scalar_t__ FUNC1 (char const*,char*,char*,char*) ; 
 scalar_t__ _CGROUP_CONTROLLER_MAX ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char const*) ; 
 size_t FUNC7 (char const*) ; 
 char* FUNC8 (char const*,char) ; 

char *FUNC9(const char *p) {
        bool need_prefix = false;

        /* This implements very minimal escaping for names to be used
         * as file names in the cgroup tree: any name which might
         * conflict with a kernel name or is prefixed with '_' is
         * prefixed with a '_'. That way, when reading cgroup names it
         * is sufficient to remove a single prefixing underscore if
         * there is one. */

        /* The return value of this function (unlike cg_unescape())
         * needs free()! */

        if (FUNC0(p[0], 0, '_', '.') ||
            FUNC1(p, "notify_on_release", "release_agent", "tasks") ||
            FUNC4(p, "cgroup."))
                need_prefix = true;
        else {
                const char *dot;

                dot = FUNC8(p, '.');
                if (dot) {
                        CGroupController c;
                        size_t l = dot - p;

                        for (c = 0; c < _CGROUP_CONTROLLER_MAX; c++) {
                                const char *n;

                                n = FUNC2(c);

                                if (l != FUNC7(n))
                                        continue;

                                if (FUNC3(p, n, l) != 0)
                                        continue;

                                need_prefix = true;
                                break;
                        }
                }
        }

        if (need_prefix)
                return FUNC6("_", p);

        return FUNC5(p);
}