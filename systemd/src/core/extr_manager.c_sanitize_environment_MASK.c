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
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 

__attribute__((used)) static char** FUNC2(char **l) {

        /* Let's remove some environment variables that we need ourselves to communicate with our clients */
        FUNC0(
                        l,
                        "EXIT_CODE",
                        "EXIT_STATUS",
                        "INVOCATION_ID",
                        "JOURNAL_STREAM",
                        "LISTEN_FDNAMES",
                        "LISTEN_FDS",
                        "LISTEN_PID",
                        "MAINPID",
                        "MANAGERPID",
                        "NOTIFY_SOCKET",
                        "PIDFILE",
                        "REMOTE_ADDR",
                        "REMOTE_PORT",
                        "SERVICE_RESULT",
                        "WATCHDOG_PID",
                        "WATCHDOG_USEC",
                        NULL);

        /* Let's order the environment alphabetically, just to make it pretty */
        FUNC1(l);

        return l;
}