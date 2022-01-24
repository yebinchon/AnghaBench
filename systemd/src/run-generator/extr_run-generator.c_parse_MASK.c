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
 int /*<<< orphan*/  arg_commands ; 
 int /*<<< orphan*/  arg_failure_action ; 
 int /*<<< orphan*/  arg_success_action ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC5(const char *key, const char *value, void *data) {
        int r;

        if (FUNC2(key, "systemd.run")) {

                if (FUNC3(key, value))
                        return 0;

                r = FUNC4(&arg_commands, value);
                if (r < 0)
                        return FUNC1();

        } else if (FUNC2(key, "systemd.run_success_action")) {

                if (FUNC3(key, value))
                        return 0;

                if (FUNC0(&arg_success_action, value) < 0)
                        return FUNC1();

        } else if (FUNC2(key, "systemd.run_failure_action")) {

                if (FUNC3(key, value))
                        return 0;

                if (FUNC0(&arg_failure_action, value) < 0)
                        return FUNC1();
        }

        return 0;
}