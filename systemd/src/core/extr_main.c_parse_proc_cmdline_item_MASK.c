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
 int /*<<< orphan*/  LOG_TARGET_CONSOLE ; 
 scalar_t__ SHOW_STATUS_AUTO ; 
 scalar_t__ SHOW_STATUS_YES ; 
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 int UNIT_NAME_INSTANCE ; 
 int UNIT_NAME_PLAIN ; 
 scalar_t__ USEC_INFINITY ; 
 scalar_t__ _SHOW_STATUS_INVALID ; 
 int /*<<< orphan*/  arg_confirm_spawn ; 
 scalar_t__ arg_crash_chvt ; 
 int arg_crash_reboot ; 
 int arg_crash_shell ; 
 char** arg_default_environment ; 
 int arg_default_std_error ; 
 int arg_default_std_output ; 
 scalar_t__ arg_default_timeout_start_usec ; 
 int /*<<< orphan*/  arg_default_unit ; 
 int arg_dump_core ; 
 int /*<<< orphan*/  arg_early_core_pattern ; 
 int arg_service_watchdogs ; 
 scalar_t__ arg_show_status ; 
 int arg_status_unit_format ; 
 int /*<<< orphan*/  arg_watchdog_device ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,char const*,...) ; 
 int FUNC12 (char const*) ; 
 int FUNC13 (char const*,char**) ; 
 int FUNC14 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (char const*,scalar_t__*) ; 
 int FUNC17 (char const*,scalar_t__*) ; 
 scalar_t__ FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 
 scalar_t__ FUNC20 (char const*,char const*) ; 
 char* FUNC21 (char const*) ; 
 int FUNC22 (char const*) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 
 int FUNC24 (char const*) ; 
 scalar_t__ FUNC25 (char const*,char*) ; 
 char** FUNC26 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC27 (char const*,int) ; 

__attribute__((used)) static int FUNC28(const char *key, const char *value, void *data) {

        int r;

        FUNC1(key);

        if (FUNC0(key, "systemd.unit", "rd.systemd.unit")) {

                if (FUNC20(key, value))
                        return 0;

                if (!FUNC27(value, UNIT_NAME_PLAIN|UNIT_NAME_INSTANCE))
                        FUNC10("Unit name specified on %s= is not valid, ignoring: %s", key, value);
                else if (FUNC7() == !!FUNC23(key, "rd.")) {
                        if (FUNC6(&arg_default_unit, value) < 0)
                                return FUNC8();
                }

        } else if (FUNC19(key, "systemd.dump_core")) {

                r = value ? FUNC12(value) : true;
                if (r < 0)
                        FUNC11(r, "Failed to parse dump core switch %s, ignoring: %m", value);
                else
                        arg_dump_core = r;

        } else if (FUNC19(key, "systemd.early_core_pattern")) {

                if (FUNC20(key, value))
                        return 0;

                if (FUNC18(value))
                        (void) FUNC15(value, false, &arg_early_core_pattern);
                else
                        FUNC10("Specified core pattern '%s' is not an absolute path, ignoring.", value);

        } else if (FUNC19(key, "systemd.crash_chvt")) {

                if (!value)
                        arg_crash_chvt = 0; /* turn on */
                else {
                        r = FUNC14(value, &arg_crash_chvt);
                        if (r < 0)
                                FUNC11(r, "Failed to parse crash chvt switch %s, ignoring: %m", value);
                }

        } else if (FUNC19(key, "systemd.crash_shell")) {

                r = value ? FUNC12(value) : true;
                if (r < 0)
                        FUNC11(r, "Failed to parse crash shell switch %s, ignoring: %m", value);
                else
                        arg_crash_shell = r;

        } else if (FUNC19(key, "systemd.crash_reboot")) {

                r = value ? FUNC12(value) : true;
                if (r < 0)
                        FUNC11(r, "Failed to parse crash reboot switch %s, ignoring: %m", value);
                else
                        arg_crash_reboot = r;

        } else if (FUNC19(key, "systemd.confirm_spawn")) {
                char *s;

                r = FUNC13(value, &s);
                if (r < 0)
                        FUNC11(r, "Failed to parse confirm_spawn switch %s, ignoring: %m", value);
                else
                        FUNC5(arg_confirm_spawn, s);

        } else if (FUNC19(key, "systemd.service_watchdogs")) {

                r = value ? FUNC12(value) : true;
                if (r < 0)
                        FUNC11(r, "Failed to parse service watchdog switch %s, ignoring: %m", value);
                else
                        arg_service_watchdogs = r;

        } else if (FUNC19(key, "systemd.show_status")) {

                if (value) {
                        r = FUNC17(value, &arg_show_status);
                        if (r < 0)
                                FUNC11(r, "Failed to parse show status switch %s, ignoring: %m", value);
                } else
                        arg_show_status = SHOW_STATUS_YES;

        } else if (FUNC19(key, "systemd.status_unit_format")) {

                if (FUNC20(key, value))
                        return 0;

                r = FUNC24(value);
                if (r < 0)
                        FUNC11(r, "Failed to parse %s=%s, ignoring: %m", key, value);
                else
                        arg_status_unit_format = r;

        } else if (FUNC19(key, "systemd.default_standard_output")) {

                if (FUNC20(key, value))
                        return 0;

                r = FUNC4(value);
                if (r < 0)
                        FUNC11(r, "Failed to parse default standard output switch %s, ignoring: %m", value);
                else
                        arg_default_std_output = r;

        } else if (FUNC19(key, "systemd.default_standard_error")) {

                if (FUNC20(key, value))
                        return 0;

                r = FUNC4(value);
                if (r < 0)
                        FUNC11(r, "Failed to parse default standard error switch %s, ignoring: %m", value);
                else
                        arg_default_std_error = r;

        } else if (FUNC25(key, "systemd.setenv")) {

                if (FUNC20(key, value))
                        return 0;

                if (FUNC3(value)) {
                        char **env;

                        env = FUNC26(arg_default_environment, value);
                        if (!env)
                                return FUNC8();

                        arg_default_environment = env;
                } else
                        FUNC10("Environment variable name '%s' is not valid. Ignoring.", value);

        } else if (FUNC19(key, "systemd.machine_id")) {

                if (FUNC20(key, value))
                        return 0;

                r = FUNC22(value);
                if (r < 0)
                        FUNC11(r, "MachineID '%s' is not valid, ignoring: %m", value);

        } else if (FUNC19(key, "systemd.default_timeout_start_sec")) {

                if (FUNC20(key, value))
                        return 0;

                r = FUNC16(value, &arg_default_timeout_start_usec);
                if (r < 0)
                        FUNC11(r, "Failed to parse default start timeout '%s', ignoring: %m", value);

                if (arg_default_timeout_start_usec <= 0)
                        arg_default_timeout_start_usec = USEC_INFINITY;

        } else if (FUNC19(key, "systemd.watchdog_device")) {

                if (FUNC20(key, value))
                        return 0;

                (void) FUNC15(value, false, &arg_watchdog_device);

        } else if (FUNC25(key, "quiet") && !value) {

                if (arg_show_status == _SHOW_STATUS_INVALID)
                        arg_show_status = SHOW_STATUS_AUTO;

        } else if (FUNC25(key, "debug") && !value) {

                /* Note that log_parse_environment() handles 'debug'
                 * too, and sets the log level to LOG_DEBUG. */

                if (FUNC2() > 0)
                        FUNC9(LOG_TARGET_CONSOLE);

        } else if (!value) {
                const char *target;

                /* SysV compatibility */
                target = FUNC21(key);
                if (target)
                        return FUNC6(&arg_default_unit, target);
        }

        return 0;
}