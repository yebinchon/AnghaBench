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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  UNIT_PERSISTENT ; 
 int /*<<< orphan*/  UNIT_RUNTIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        int runtime, r;

        FUNC1(message);
        FUNC1(u);

        r = FUNC4(u, message, "start", error);
        if (r < 0)
                return r;

        r = FUNC5(message, "b", &runtime);
        if (r < 0)
                return r;

        r = FUNC3(
                        u,
                        "set-property",
                        CAP_SYS_ADMIN,
                        FUNC0("Authentication is required to set properties on '$(unit)'."),
                        true,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC2(u, message, runtime ? UNIT_RUNTIME : UNIT_PERSISTENT, true, error);
        if (r < 0)
                return r;

        return FUNC6(message, NULL);
}