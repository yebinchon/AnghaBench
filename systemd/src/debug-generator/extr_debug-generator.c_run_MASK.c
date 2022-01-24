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
 int PROC_CMDLINE_RD_STRICT ; 
 int PROC_CMDLINE_STRIP_RD_PREFIX ; 
 scalar_t__ arg_debug_shell ; 
 char const* arg_dest ; 
 int /*<<< orphan*/  arg_wants ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC8(const char *dest, const char *dest_early, const char *dest_late) {
        int r, q;

        FUNC0(arg_dest = dest_early);

        r = FUNC6(parse_proc_cmdline_item, NULL, PROC_CMDLINE_RD_STRICT | PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                FUNC5(r, "Failed to parse kernel command line, ignoring: %m");

        if (arg_debug_shell) {
                r = FUNC7(&arg_wants, "debug-shell.service");
                if (r < 0)
                        return FUNC4();

                FUNC3(arg_dest);
        }

        r = FUNC1();
        q = FUNC2();

        return r < 0 ? r : q;
}