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
 int /*<<< orphan*/  RC_LOCAL_SCRIPT_PATH_START ; 
 int FUNC0 (char*,char*) ; 
 char const* arg_dest ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *dest, const char *dest_early, const char *dest_late) {
        int r = 0, k = 0;

        FUNC1(arg_dest = dest);

        if (FUNC2(RC_LOCAL_SCRIPT_PATH_START) >= 0) {
                FUNC3("Automatically adding rc-local.service.");

                r = FUNC0("rc-local.service", "multi-user.target");
        }

        return r < 0 ? r : k;
}