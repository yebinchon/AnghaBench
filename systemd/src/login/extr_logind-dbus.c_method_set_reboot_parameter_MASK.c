#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*,char*,char const**) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        const char *arg;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "s", &arg);
        if (r < 0)
                return r;

        r = FUNC2();
        if (r < 0)
                return r;
        if (r > 0)
                return FUNC3(error, SD_BUS_ERROR_NOT_SUPPORTED,
                                         "Reboot parameter not supported in containers, refusing.");

        r = FUNC1(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-reboot-parameter",
                                    NULL,
                                    false,
                                    UID_INVALID,
                                    &m->polkit_registry,
                                    error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC6(arg, false);
        if (r < 0)
                return r;

        return FUNC5(message, NULL);
}