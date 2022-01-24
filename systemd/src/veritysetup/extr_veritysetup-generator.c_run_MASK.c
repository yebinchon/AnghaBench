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
 int /*<<< orphan*/  PROC_CMDLINE_STRIP_RD_PREFIX ; 
 char const* arg_dest ; 
 int /*<<< orphan*/  arg_enabled ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        FUNC0(arg_dest = dest);

        r = FUNC4(parse_proc_cmdline_item, NULL, PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                return FUNC3(r, "Failed to parse kernel command line: %m");

        /* For now we only support the root device on verity. Later on we might want to add support for /etc/veritytab
         * or similar to define additional mappings */

        if (!arg_enabled)
                return 0;

        r = FUNC2();
        if (r < 0)
                return r;

        return FUNC1();
}