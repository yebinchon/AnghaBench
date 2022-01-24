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
 int /*<<< orphan*/  ACL_NEXT_ENTRY ; 
 scalar_t__ ACL_USER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int errno ; 

__attribute__((used)) static int FUNC4(acl_t acl) {
        acl_entry_t i;
        int found;
        bool changed = false;

        FUNC3(acl);

        for (found = FUNC1(acl, ACL_FIRST_ENTRY, &i);
             found > 0;
             found = FUNC1(acl, ACL_NEXT_ENTRY, &i)) {

                acl_tag_t tag;

                if (FUNC2(i, &tag) < 0)
                        return -errno;

                if (tag != ACL_USER)
                        continue;

                if (FUNC0(acl, i) < 0)
                        return -errno;

                changed = true;
        }

        if (found < 0)
                return -errno;

        return changed;
}