#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
struct passwd {int dummy; } ;
struct group {char const* gr_name; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_3__ {char const* name; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  arg_root ; 
 int /*<<< orphan*/  database_by_gid ; 
 int /*<<< orphan*/  database_by_uid ; 
 int errno ; 
 struct group* FUNC3 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  todo_gids ; 
 int /*<<< orphan*/  todo_uids ; 

__attribute__((used)) static int FUNC9(uid_t uid, const char *name, bool check_with_gid) {
        struct passwd *p;
        struct group *g;
        const char *n;
        Item *i;

        /* Let's see if we already have assigned the UID a second time */
        if (FUNC7(todo_uids, FUNC2(uid)))
                return 0;

        /* Try to avoid using uids that are already used by a group
         * that doesn't have the same name as our new user. */
        if (check_with_gid) {
                i = FUNC7(todo_gids, FUNC0(uid));
                if (i && !FUNC8(i->name, name))
                        return 0;
        }

        /* Let's check the files directly */
        if (FUNC5(database_by_uid, FUNC2(uid)))
                return 0;

        if (check_with_gid) {
                n = FUNC6(database_by_gid, FUNC0(uid));
                if (n && !FUNC8(n, name))
                        return 0;
        }

        /* Let's also check via NSS, to avoid UID clashes over LDAP and such, just in case */
        if (!arg_root) {
                errno = 0;
                p = FUNC4(uid);
                if (p)
                        return 0;
                if (!FUNC1(errno, 0, ENOENT))
                        return -errno;

                if (check_with_gid) {
                        errno = 0;
                        g = FUNC3((gid_t) uid);
                        if (g) {
                                if (!FUNC8(g->gr_name, name))
                                        return 0;
                        } else if (!FUNC1(errno, 0, ENOENT))
                                return -errno;
                }
        }

        return 1;
}