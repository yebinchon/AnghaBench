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
struct group {char* gr_name; int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  UserCredsFlags ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  ESRCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GID_NOBODY ; 
 char* NOBODY_GROUP_NAME ; 
 scalar_t__ FUNC1 (char const*,char*,char*) ; 
 int /*<<< orphan*/  USER_CREDS_ALLOW_MISSING ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct group* FUNC4 (int /*<<< orphan*/ ) ; 
 struct group* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 () ; 

int FUNC9(const char **groupname, gid_t *gid, UserCredsFlags flags) {
        struct group *g;
        gid_t id;

        FUNC2(groupname);

        /* We enforce some special rules for gid=0: in order to avoid NSS lookups for root we hardcode its data. */

        if (FUNC1(*groupname, "root", "0")) {
                *groupname = "root";

                if (gid)
                        *gid = 0;

                return 0;
        }

        if (FUNC8() &&
            FUNC1(*groupname, NOBODY_GROUP_NAME, "65534")) {
                *groupname = NOBODY_GROUP_NAME;

                if (gid)
                        *gid = GID_NOBODY;

                return 0;
        }

        if (FUNC7(*groupname, &id) >= 0) {
                errno = 0;
                g = FUNC4(id);

                if (g)
                        *groupname = g->gr_name;
                else if (FUNC0(flags, USER_CREDS_ALLOW_MISSING)) {
                        if (gid)
                                *gid = id;

                        return 0;
                }
        } else {
                errno = 0;
                g = FUNC5(*groupname);
        }

        if (!g)
                return FUNC3(ESRCH);

        if (gid) {
                if (!FUNC6(g->gr_gid))
                        return -EBADMSG;

                *gid = g->gr_gid;
        }

        return 0;
}