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

/* Variables and functions */
 scalar_t__ UNIT_FILE_GLOBAL ; 
 int /*<<< orphan*/  arg_root ; 
 scalar_t__ arg_scope ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static bool FUNC4(void) {
        /* Decides when to execute enable/disable/... operations
         * client-side rather than server-side. */

        if (FUNC2())
                return true;

        if (FUNC3() <= 0)
                return true;

        if (!FUNC1(arg_root))
                return true;

        if (arg_scope == UNIT_FILE_GLOBAL)
                return true;

        /* Unsupported environment variable, mostly for debugging purposes */
        if (FUNC0("SYSTEMCTL_INSTALL_CLIENT_SIDE") > 0)
                return true;

        return false;
}