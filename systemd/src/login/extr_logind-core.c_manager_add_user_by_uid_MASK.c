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
struct passwd {int /*<<< orphan*/  pw_dir; int /*<<< orphan*/  pw_name; int /*<<< orphan*/  pw_gid; } ;
typedef  int /*<<< orphan*/  User ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct passwd* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

int FUNC4(Manager *m, uid_t uid, User **ret_user) {
        struct passwd *p;

        FUNC0(m);

        errno = 0;
        p = FUNC2(uid);
        if (!p)
                return FUNC1(ENOENT);

        return FUNC3(m, uid, p->pw_gid, p->pw_name, p->pw_dir, ret_user);
}