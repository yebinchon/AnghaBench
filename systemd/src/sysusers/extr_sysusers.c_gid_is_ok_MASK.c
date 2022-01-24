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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {int dummy; } ;
struct group {int dummy; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  arg_root ; 
 int /*<<< orphan*/  database_by_gid ; 
 int /*<<< orphan*/  database_by_uid ; 
 int errno ; 
 struct group* FUNC3 (scalar_t__) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  todo_gids ; 
 int /*<<< orphan*/  todo_uids ; 

__attribute__((used)) static int FUNC7(gid_t gid) {
        struct group *g;
        struct passwd *p;

        if (FUNC6(todo_gids, FUNC0(gid)))
                return 0;

        /* Avoid reusing gids that are already used by a different user */
        if (FUNC6(todo_uids, FUNC2(gid)))
                return 0;

        if (FUNC5(database_by_gid, FUNC0(gid)))
                return 0;

        if (FUNC5(database_by_uid, FUNC2(gid)))
                return 0;

        if (!arg_root) {
                errno = 0;
                g = FUNC3(gid);
                if (g)
                        return 0;
                if (!FUNC1(errno, 0, ENOENT))
                        return -errno;

                errno = 0;
                p = FUNC4((uid_t) gid);
                if (p)
                        return 0;
                if (!FUNC1(errno, 0, ENOENT))
                        return -errno;
        }

        return 1;
}