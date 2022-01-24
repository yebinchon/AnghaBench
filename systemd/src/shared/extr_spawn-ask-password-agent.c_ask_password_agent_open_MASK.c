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
 int EPERM ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH ; 
 scalar_t__ agent_pid ; 
 int FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*) ; 

int FUNC4(void) {
        int r;

        if (agent_pid > 0)
                return 0;

        /* We check STDIN here, not STDOUT, since this is about input,
         * not output */
        if (!FUNC2(STDIN_FILENO))
                return 0;

        if (!FUNC1())
                return -EPERM;

        r = FUNC0("(sd-askpwagent)",
                       NULL, 0,
                       &agent_pid,
                       SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH,
                       SYSTEMD_TTY_ASK_PASSWORD_AGENT_BINARY_PATH, "--watch", NULL);
        if (r < 0)
                return FUNC3(r, "Failed to fork TTY ask password agent: %m");

        return 1;
}