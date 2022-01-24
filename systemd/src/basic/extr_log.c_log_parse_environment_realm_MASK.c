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
typedef  int /*<<< orphan*/  LogRealm ;

/* Variables and functions */
 int /*<<< orphan*/  PROC_CMDLINE_STRIP_RD_PREFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  parse_proc_cmdline_item ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC9(LogRealm realm) {
        /* Do not call from library code. */

        const char *e;

        if (FUNC2() == 1 || FUNC0(0, NULL) < 0)
                /* Only try to read the command line in daemons. We assume that anything that has a
                 * controlling tty is user stuff. For PID1 we do a special check in case it hasn't
                 * closed the console yet. */
                (void) FUNC8(parse_proc_cmdline_item, NULL, PROC_CMDLINE_STRIP_RD_PREFIX);

        e = FUNC1("SYSTEMD_LOG_TARGET");
        if (e && FUNC4(e) < 0)
                FUNC7("Failed to parse log target '%s'. Ignoring.", e);

        e = FUNC1("SYSTEMD_LOG_LEVEL");
        if (e && FUNC3(realm, e) < 0)
                FUNC7("Failed to parse log level '%s'. Ignoring.", e);

        e = FUNC1("SYSTEMD_LOG_COLOR");
        if (e && FUNC5(e) < 0)
                FUNC7("Failed to parse log color '%s'. Ignoring.", e);

        e = FUNC1("SYSTEMD_LOG_LOCATION");
        if (e && FUNC6(e) < 0)
                FUNC7("Failed to parse log location '%s'. Ignoring.", e);
}