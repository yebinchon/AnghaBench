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
typedef  char const sd_journal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char const*) ; 

int FUNC5(sd_journal *j, const char *unit) {
        const char *m1, *m2, *m3, *m4;
        int r;

        FUNC0(j);
        FUNC0(unit);

        m1 = FUNC4("_SYSTEMD_UNIT=", unit);
        m2 = FUNC4("COREDUMP_UNIT=", unit);
        m3 = FUNC4("UNIT=", unit);
        m4 = FUNC4("OBJECT_SYSTEMD_UNIT=", unit);

        (void)(
            /* Look for messages from the service itself */
            (r = FUNC3(j, m1, 0)) ||

            /* Look for coredumps of the service */
            (r = FUNC2(j)) ||
            (r = FUNC3(j, "MESSAGE_ID=fc2e22bc6ee647b6b90729ab34a250b1", 0)) ||
            (r = FUNC3(j, "_UID=0", 0)) ||
            (r = FUNC3(j, m2, 0)) ||

             /* Look for messages from PID 1 about this service */
            (r = FUNC2(j)) ||
            (r = FUNC3(j, "_PID=1", 0)) ||
            (r = FUNC3(j, m3, 0)) ||

            /* Look for messages from authorized daemons about this service */
            (r = FUNC2(j)) ||
            (r = FUNC3(j, "_UID=0", 0)) ||
            (r = FUNC3(j, m4, 0))
        );

        if (r == 0 && FUNC1(unit, ".slice")) {
                const char *m5;

                m5 = FUNC4("_SYSTEMD_SLICE=", unit);

                /* Show all messages belonging to a slice */
                (void)(
                        (r = FUNC2(j)) ||
                        (r = FUNC3(j, m5, 0))
                        );
        }

        return r;
}