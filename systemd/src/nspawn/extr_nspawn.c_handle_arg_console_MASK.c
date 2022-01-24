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
 int /*<<< orphan*/  CONSOLE_INTERACTIVE ; 
 int /*<<< orphan*/  CONSOLE_PASSIVE ; 
 int /*<<< orphan*/  CONSOLE_PIPE ; 
 int /*<<< orphan*/  CONSOLE_READ_ONLY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SETTING_CONSOLE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_console_mode ; 
 int /*<<< orphan*/  arg_settings_mask ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *arg) {
        if (FUNC3(arg, "help")) {
                FUNC2("interactive\n"
                     "read-only\n"
                     "passive\n"
                     "pipe");
                return 0;
        }

        if (FUNC3(arg, "interactive"))
                arg_console_mode = CONSOLE_INTERACTIVE;
        else if (FUNC3(arg, "read-only"))
                arg_console_mode = CONSOLE_READ_ONLY;
        else if (FUNC3(arg, "passive"))
                arg_console_mode = CONSOLE_PASSIVE;
        else if (FUNC3(arg, "pipe"))
                arg_console_mode = CONSOLE_PIPE;
        else
                return FUNC1(FUNC0(EINVAL), "Unknown console mode: %s", optarg);

        arg_settings_mask |= SETTING_CONSOLE_MODE;
        return 1;
}