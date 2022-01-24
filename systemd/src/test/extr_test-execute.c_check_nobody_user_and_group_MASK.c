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
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int /*<<< orphan*/  pw_name; } ;
struct group {scalar_t__ gr_gid; int /*<<< orphan*/  gr_name; } ;

/* Variables and functions */
 scalar_t__ GID_NOBODY ; 
 int /*<<< orphan*/  NOBODY_GROUP_NAME ; 
 int /*<<< orphan*/  NOBODY_USER_NAME ; 
 scalar_t__ UID_NOBODY ; 
 struct group* FUNC0 (scalar_t__) ; 
 struct group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool FUNC6(void) {
        static int cache = -1;
        struct passwd *p;
        struct group *g;

        if (cache >= 0)
                return !!cache;

        if (!FUNC5())
                goto invalid;

        p = FUNC2(NOBODY_USER_NAME);
        if (!p ||
            !FUNC4(p->pw_name, NOBODY_USER_NAME) ||
            p->pw_uid != UID_NOBODY ||
            p->pw_gid != GID_NOBODY)
                goto invalid;

        p = FUNC3(UID_NOBODY);
        if (!p ||
            !FUNC4(p->pw_name, NOBODY_USER_NAME) ||
            p->pw_uid != UID_NOBODY ||
            p->pw_gid != GID_NOBODY)
                goto invalid;

        g = FUNC1(NOBODY_GROUP_NAME);
        if (!g ||
            !FUNC4(g->gr_name, NOBODY_GROUP_NAME) ||
            g->gr_gid != GID_NOBODY)
                goto invalid;

        g = FUNC0(GID_NOBODY);
        if (!g ||
            !FUNC4(g->gr_name, NOBODY_GROUP_NAME) ||
            g->gr_gid != GID_NOBODY)
                goto invalid;

        cache = 1;
        return true;

invalid:
        cache = 0;
        return false;
}