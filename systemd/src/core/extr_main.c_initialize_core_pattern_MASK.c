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
 int /*<<< orphan*/  arg_early_core_pattern ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(bool skip_setup) {
        int r;

        if (skip_setup || !arg_early_core_pattern)
                return;

        if (FUNC0() != 1)
                return;

        r = FUNC2("/proc/sys/kernel/core_pattern", arg_early_core_pattern, WRITE_STRING_FILE_DISABLE_BUFFER);
        if (r < 0)
                FUNC1(r, "Failed to write '%s' to /proc/sys/kernel/core_pattern, ignoring: %m", arg_early_core_pattern);
}