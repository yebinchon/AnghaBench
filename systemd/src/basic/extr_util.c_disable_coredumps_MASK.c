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
 int /*<<< orphan*/  WRITE_STRING_FILE_DISABLE_BUFFER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC3(void) {
        int r;

        if (FUNC0() > 0)
                return;

        r = FUNC2("/proc/sys/kernel/core_pattern", "|/bin/false", WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                FUNC1(r, "Failed to turn off coredumps, ignoring: %m");
}