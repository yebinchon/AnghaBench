#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  argument; int /*<<< orphan*/  append_or_force; int /*<<< orphan*/  acl_default; int /*<<< orphan*/  acl_access; } ;
typedef  TYPE_1__ Item ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(Item *item) {
#if HAVE_ACL
        int r;

        assert(item);

        /* If append_or_force (= modify) is set, we will not modify the acl
         * afterwards, so the mask can be added now if necessary. */

        r = parse_acl(item->argument, &item->acl_access, &item->acl_default, !item->append_or_force);
        if (r < 0)
                log_warning_errno(r, "Failed to parse ACL \"%s\": %m. Ignoring", item->argument);
#else
        FUNC2(FUNC0(ENOSYS), "ACLs are not supported. Ignoring");
#endif

        return 0;
}