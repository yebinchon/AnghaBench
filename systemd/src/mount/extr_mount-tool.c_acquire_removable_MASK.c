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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 scalar_t__ ACTION_AUTOMOUNT ; 
 scalar_t__ ACTION_DEFAULT ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 scalar_t__ arg_action ; 
 int arg_bind_device ; 
 int /*<<< orphan*/  arg_timeout_idle ; 
 scalar_t__ arg_timeout_idle_set ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(sd_device *d) {
        const char *v;

        /* Shortcut this if there's no reason to check it */
        if (arg_action != ACTION_DEFAULT && arg_timeout_idle_set && arg_bind_device >= 0)
                return 0;

        for (;;) {
                if (FUNC4(d, "removable", &v) > 0)
                        break;

                if (FUNC2(d, &d) < 0)
                        return 0;

                if (FUNC3(d, &v) < 0 || !FUNC5(v, "block"))
                        return 0;
        }

        if (FUNC1(v) <= 0)
                return 0;

        FUNC0("Discovered removable device.");

        if (arg_action == ACTION_DEFAULT) {
                FUNC0("Automatically turning on automount.");
                arg_action = ACTION_AUTOMOUNT;
        }

        if (!arg_timeout_idle_set) {
                FUNC0("Setting idle timeout to 1s.");
                arg_timeout_idle = USEC_PER_SEC;
        }

        if (arg_bind_device < 0) {
                FUNC0("Binding automount unit to device.");
                arg_bind_device = true;
        }

        return 1;
}