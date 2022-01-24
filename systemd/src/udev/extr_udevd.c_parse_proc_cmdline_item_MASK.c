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
 int /*<<< orphan*/  arg_children_max ; 
 int /*<<< orphan*/  arg_event_timeout_usec ; 
 int /*<<< orphan*/  arg_exec_delay_usec ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*,char const*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(const char *key, const char *value, void *data) {
        int r = 0;

        FUNC0(key);

        if (!value)
                return 0;

        if (FUNC6(key, "udev.log_priority")) {

                if (FUNC7(key, value))
                        return 0;

                r = FUNC1(value);
                if (r >= 0)
                        FUNC2(r);

        } else if (FUNC6(key, "udev.event_timeout")) {

                if (FUNC7(key, value))
                        return 0;

                r = FUNC5(value, &arg_event_timeout_usec);

        } else if (FUNC6(key, "udev.children_max")) {

                if (FUNC7(key, value))
                        return 0;

                r = FUNC8(value, &arg_children_max);

        } else if (FUNC6(key, "udev.exec_delay")) {

                if (FUNC7(key, value))
                        return 0;

                r = FUNC5(value, &arg_exec_delay_usec);

        } else if (FUNC9(key, "udev."))
                FUNC3("Unknown udev kernel command line option \"%s\", ignoring", key);

        if (r < 0)
                FUNC4(r, "Failed to parse \"%s=%s\", ignoring: %m", key, value);

        return 0;
}