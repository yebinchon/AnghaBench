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
typedef  scalar_t__ acl_tag_t ;
typedef  int /*<<< orphan*/  acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_FIRST_ENTRY ; 
 int /*<<< orphan*/  ACL_GROUP ; 
 scalar_t__ ACL_MASK ; 
 int /*<<< orphan*/  ACL_NEXT_ENTRY ; 
 int /*<<< orphan*/  ACL_USER ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int errno ; 

int FUNC5(acl_t *acl_p) {
        acl_entry_t i;
        int r;
        bool need = false;

        FUNC4(acl_p);

        for (r = FUNC2(*acl_p, ACL_FIRST_ENTRY, &i);
             r > 0;
             r = FUNC2(*acl_p, ACL_NEXT_ENTRY, &i)) {
                acl_tag_t tag;

                if (FUNC3(i, &tag) < 0)
                        return -errno;

                if (tag == ACL_MASK)
                        return 0;

                if (FUNC0(tag, ACL_USER, ACL_GROUP))
                        need = true;
        }
        if (r < 0)
                return -errno;

        if (need && FUNC1(acl_p) < 0)
                return -errno;

        return need;
}