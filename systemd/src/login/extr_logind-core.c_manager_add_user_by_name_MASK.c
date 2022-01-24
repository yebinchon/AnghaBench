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
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  User ;
typedef  char const Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ **) ; 

int FUNC3(
                Manager *m,
                const char *name,
                User **ret_user) {

        const char *home = NULL;
        uid_t uid;
        gid_t gid;
        int r;

        FUNC0(m);
        FUNC0(name);

        r = FUNC1(&name, &uid, &gid, &home, NULL, 0);
        if (r < 0)
                return r;

        return FUNC2(m, uid, gid, name, home, ret_user);
}