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
 int /*<<< orphan*/  DEBUGTTY ; 
 int /*<<< orphan*/  arg_debug_shell ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const char *dir) {
        int r;

        if (FUNC2(arg_debug_shell, FUNC1(DEBUGTTY)))
                return;

        r = FUNC3(dir, "debug-shell.service", 50, "tty",
                        "[Unit]\n"
                        "Description=Early root shell on /dev/%s FOR DEBUGGING ONLY\n"
                        "ConditionPathExists=\n"
                        "[Service]\n"
                        "TTYPath=/dev/%s",
                        arg_debug_shell, arg_debug_shell);
        if (r < 0)
                FUNC0(r, "Failed to write drop-in for debug-shell.service, ignoring: %m");
}