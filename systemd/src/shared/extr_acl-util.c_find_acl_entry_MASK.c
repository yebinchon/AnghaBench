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
typedef  int /*<<< orphan*/  acl_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_FIRST_ENTRY ; 
 int /*<<< orphan*/  ACL_NEXT_ENTRY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int errno ; 

__attribute__((used)) static int FUNC2(acl_t acl, acl_entry_t entry, acl_entry_t *out) {
        acl_entry_t i;
        int r;

        for (r = FUNC1(acl, ACL_FIRST_ENTRY, &i);
             r > 0;
             r = FUNC1(acl, ACL_NEXT_ENTRY, &i)) {

                r = FUNC0(i, entry);
                if (r < 0)
                        return r;
                if (r > 0) {
                        *out = i;
                        return 1;
                }
        }
        if (r < 0)
                return -errno;
        return 0;
}