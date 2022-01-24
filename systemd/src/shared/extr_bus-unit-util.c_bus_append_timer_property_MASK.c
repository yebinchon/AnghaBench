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
typedef  char const* usec_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int,char*,char const*,char const*) ; 
 int FUNC6 (char const*,char const**) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,char*,char*,int,...) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(sd_bus_message *m, const char *field, const char *eq) {
        int r;

        if (FUNC0(field, "WakeSystem", "RemainAfterElapse", "Persistent",
                       "OnTimezoneChange", "OnClockChange"))
                return FUNC1(m, field, eq);

        if (FUNC0(field, "AccuracySec", "RandomizedDelaySec"))
                return FUNC2(m, field, eq);

        if (FUNC0(field,
                       "OnActiveSec", "OnBootSec", "OnStartupSec",
                       "OnUnitActiveSec","OnUnitInactiveSec")) {
                if (FUNC4(eq))
                        r = FUNC7(m, "(sv)", "TimersMonotonic", "a(st)", 0);
                else {
                        usec_t t;
                        r = FUNC6(eq, &t);
                        if (r < 0)
                                return FUNC5(r, "Failed to parse %s=%s: %m", field, eq);

                        r = FUNC7(m, "(sv)", "TimersMonotonic", "a(st)", 1, field, t);
                }
                if (r < 0)
                        return FUNC3(r);

                return 1;
        }

        if (FUNC8(field, "OnCalendar")) {
                if (FUNC4(eq))
                        r = FUNC7(m, "(sv)", "TimersCalendar", "a(ss)", 0);
                else
                        r = FUNC7(m, "(sv)", "TimersCalendar", "a(ss)", 1, field, eq);
                if (r < 0)
                        return FUNC3(r);

                return 1;
        }

        return 0;
}