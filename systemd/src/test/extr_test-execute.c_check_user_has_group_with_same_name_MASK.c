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
struct passwd {int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_name; } ;
struct group {int /*<<< orphan*/  gr_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct group* FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC4(const char *name) {
        struct passwd *p;
        struct group *g;

        FUNC0(name);

        p = FUNC2(name);
        if (!p ||
            !FUNC3(p->pw_name, name))
                return false;

        g = FUNC1(p->pw_gid);
        if (!g ||
            !FUNC3(g->gr_name, name))
                return false;

        return true;
}