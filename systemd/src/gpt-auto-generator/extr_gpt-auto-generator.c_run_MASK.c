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
 int FUNC0 () ; 
 int FUNC1 () ; 
 char const* arg_dest ; 
 int /*<<< orphan*/  arg_enabled ; 
 scalar_t__ arg_root_enabled ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *dest, const char *dest_early, const char *dest_late) {
        int r, k;

        FUNC2(arg_dest = dest_late);

        if (FUNC3() > 0) {
                FUNC5("In a container, exiting.");
                return 0;
        }

        r = FUNC7(parse_proc_cmdline_item, NULL, 0);
        if (r < 0)
                FUNC6(r, "Failed to parse kernel command line, ignoring: %m");

        if (!arg_enabled) {
                FUNC5("Disabled, exiting.");
                return 0;
        }

        if (arg_root_enabled)
                r = FUNC1();

        if (!FUNC4()) {
                k = FUNC0();
                if (r >= 0)
                        r = k;
        }

        return r;
}