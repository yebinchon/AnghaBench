#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sds ;
struct TYPE_2__ {char* acl_filename; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  UsersToLoad ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

void FUNC6(void) {
    if (server.acl_filename[0] != '\0' && FUNC3(UsersToLoad) != 0) {
        FUNC5(LL_WARNING,
            "Configuring Redis with users defined in redis.conf and at "
            "the same setting an ACL file path is invalid. This setup "
            "is very likely to lead to configuration errors and security "
            "holes, please define either an ACL file or declare users "
            "directly in your redis.conf, but not both.");
        FUNC2(1);
    }

    if (FUNC0() == C_ERR) {
        FUNC5(LL_WARNING,
            "Critical error while loading ACLs. Exiting.");
        FUNC2(1);
    }

    if (server.acl_filename[0] != '\0') {
        sds errors = FUNC1(server.acl_filename);
        if (errors) {
            FUNC5(LL_WARNING,
                "Aborting Redis startup because of ACL errors: %s", errors);
            FUNC4(errors);
            FUNC2(1);
        }
    }
}