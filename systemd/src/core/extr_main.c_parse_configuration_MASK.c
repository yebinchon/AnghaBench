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
struct rlimit {int dummy; } ;

/* Variables and functions */
 scalar_t__ arg_system ; 
 int /*<<< orphan*/  FUNC0 (struct rlimit const*) ; 
 int /*<<< orphan*/  FUNC1 (struct rlimit const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rlimit const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(const struct rlimit *saved_rlimit_nofile,
                               const struct rlimit *saved_rlimit_memlock) {
        int r;

        FUNC0(saved_rlimit_nofile);
        FUNC0(saved_rlimit_memlock);

        /* Assign configuration defaults */
        FUNC7();

        r = FUNC5();
        if (r < 0)
                FUNC4(r, "Failed to parse config file, ignoring: %m");

        if (arg_system) {
                r = FUNC6(parse_proc_cmdline_item, NULL, 0);
                if (r < 0)
                        FUNC4(r, "Failed to parse kernel command line, ignoring: %m");
        }

        /* Initialize some default rlimits for services if they haven't been configured */
        FUNC2(saved_rlimit_nofile);
        FUNC1(saved_rlimit_memlock);

        /* Note that this also parses bits from the kernel command line, including "debug". */
        FUNC3();

        return 0;
}