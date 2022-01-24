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
 char const* arg_dest ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  parse ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(const char *dest, const char *dest_early, const char *dest_late) {
        int r;

        FUNC0(arg_dest = dest);

        r = FUNC3(parse, NULL, PROC_CMDLINE_RD_STRICT|PROC_CMDLINE_STRIP_RD_PREFIX);
        if (r < 0)
                FUNC2(r, "Failed to parse kernel command line, ignoring: %m");

        return FUNC1();
}