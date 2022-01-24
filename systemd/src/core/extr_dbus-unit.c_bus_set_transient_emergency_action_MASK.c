#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  UnitWriteFlags ;
struct TYPE_4__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  EmergencyAction ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char const*,char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC7(
                Unit *u,
                const char *name,
                EmergencyAction *p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        const char *s;
        EmergencyAction v;
        int r;
        bool system;

        FUNC2(p);

        r = FUNC5(message, "s", &s);
        if (r < 0)
                return r;

        system = FUNC0(u->manager);
        r = FUNC3(s, system, &v);
        if (r < 0)
                return FUNC4(error, SD_BUS_ERROR_INVALID_ARGS,
                                         r == -EOPNOTSUPP ? "%s setting invalid for manager type: %s"
                                                          : "Invalid %s setting: %s",
                                         name, s);

        if (!FUNC1(flags)) {
                *p = v;
                FUNC6(u, flags, name,
                                    "%s=%s", name, s);
        }

        return 1;
}