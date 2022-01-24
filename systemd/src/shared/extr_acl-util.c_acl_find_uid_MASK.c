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
typedef  scalar_t__ uid_t ;
typedef  scalar_t__ acl_tag_t ;
typedef  int /*<<< orphan*/ * acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_FIRST_ENTRY ; 
 int /*<<< orphan*/  ACL_NEXT_ENTRY ; 
 scalar_t__ ACL_USER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int errno ; 

int FUNC5(acl_t acl, uid_t uid, acl_entry_t *entry) {
        acl_entry_t i;
        int r;

        FUNC4(acl);
        FUNC4(entry);

        for (r = FUNC1(acl, ACL_FIRST_ENTRY, &i);
             r > 0;
             r = FUNC1(acl, ACL_NEXT_ENTRY, &i)) {

                acl_tag_t tag;
                uid_t *u;
                bool b;

                if (FUNC3(i, &tag) < 0)
                        return -errno;

                if (tag != ACL_USER)
                        continue;

                u = FUNC2(i);
                if (!u)
                        return -errno;

                b = *u == uid;
                FUNC0(u);

                if (b) {
                        *entry = i;
                        return 1;
                }
        }
        if (r < 0)
                return -errno;

        return 0;
}