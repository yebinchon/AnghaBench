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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* arg_dest ; 
 scalar_t__ arg_noresume ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 

__attribute__((used)) static int FUNC9(int argc, char *argv[]) {
        int r = 0;

        FUNC5();

        if (argc > 1 && argc != 4)
                return FUNC3(FUNC0(EINVAL),
                                       "This program takes three or no arguments.");

        if (argc > 1)
                arg_dest = argv[1];

        /* Don't even consider resuming outside of initramfs. */
        if (!FUNC1()) {
                FUNC2("Not running in an initrd, quitting.");
                return 0;
        }

        r = FUNC7(parse_proc_cmdline_item, NULL, 0);
        if (r < 0)
                FUNC6(r, "Failed to parse kernel command line, ignoring: %m");

        if (arg_noresume) {
                FUNC4("Found \"noresume\" on the kernel command line, quitting.");
                return 0;
        }

        return FUNC8();
}