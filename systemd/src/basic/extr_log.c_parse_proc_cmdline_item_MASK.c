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
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(const char *key, const char *value, void *data) {

        /*
         * The systemd.log_xyz= settings are parsed by all tools, and
         * so is "debug".
         *
         * However, "quiet" is only parsed by PID 1, and only turns of
         * status output to /dev/console, but does not alter the log
         * level.
         */

        if (FUNC8(key, "debug") && !value)
                FUNC0(LOG_DEBUG);

        else if (FUNC6(key, "systemd.log_target")) {

                if (FUNC7(key, value))
                        return 0;

                if (FUNC2(value) < 0)
                        FUNC5("Failed to parse log target '%s'. Ignoring.", value);

        } else if (FUNC6(key, "systemd.log_level")) {

                if (FUNC7(key, value))
                        return 0;

                if (FUNC1(value) < 0)
                        FUNC5("Failed to parse log level '%s'. Ignoring.", value);

        } else if (FUNC6(key, "systemd.log_color")) {

                if (FUNC3(value ?: "1") < 0)
                        FUNC5("Failed to parse log color setting '%s'. Ignoring.", value);

        } else if (FUNC6(key, "systemd.log_location")) {

                if (FUNC4(value ?: "1") < 0)
                        FUNC5("Failed to parse log location setting '%s'. Ignoring.", value);
        }

        return 0;
}