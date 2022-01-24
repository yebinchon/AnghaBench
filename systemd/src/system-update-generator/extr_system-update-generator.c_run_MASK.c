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
 char const* arg_dest ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        FUNC0(arg_dest = dest_early);

        r = FUNC1();
        if (r <= 0)
                return r;

        /* We parse the command line only to emit warnings. */
        r = FUNC3(parse_proc_cmdline_item, NULL, 0);
        if (r < 0)
                FUNC2(r, "Failed to parse kernel command line, ignoring: %m");

        return 0;
}