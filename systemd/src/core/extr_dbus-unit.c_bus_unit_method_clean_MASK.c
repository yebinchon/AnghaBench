#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Unit ;
typedef  unsigned int ExecDirectoryType ;
typedef  unsigned int ExecCleanMask ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NOTHING_TO_CLEAN ; 
 int /*<<< orphan*/  BUS_ERROR_UNIT_BUSY ; 
 int /*<<< orphan*/  CAP_DAC_OVERRIDE ; 
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int EUNATCH ; 
 unsigned int EXEC_CLEAN_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (char const*) ; 
 int FUNC4 (TYPE_1__*,TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (TYPE_1__*,char,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,char*,char const**) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int FUNC11 (TYPE_1__*,unsigned int) ; 

int FUNC12(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        ExecCleanMask mask = 0;
        Unit *u = userdata;
        int r;

        FUNC1(message);
        FUNC1(u);

        r = FUNC4(u, message, "stop", error);
        if (r < 0)
                return r;

        r = FUNC6(message, 'a', "s");
        if (r < 0)
                return r;

        for (;;) {
                const char *i;

                r = FUNC8(message, "s", &i);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                if (FUNC10(i, "all"))
                        mask |= EXEC_CLEAN_ALL;
                else {
                        ExecDirectoryType t;

                        t = FUNC3(i);
                        if (t < 0)
                                return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid resource type: %s", i);

                        mask |= 1U << t;
                }
        }

        r = FUNC7(message);
        if (r < 0)
                return r;

        r = FUNC2(
                        u,
                        "clean",
                        CAP_DAC_OVERRIDE,
                        FUNC0("Authentication is required to delete files and directories associated with '$(unit)'."),
                        true,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC11(u, mask);
        if (r == -EOPNOTSUPP)
                return FUNC5(error, SD_BUS_ERROR_NOT_SUPPORTED, "Unit '%s' does not supporting cleaning.", u->id);
        if (r == -EUNATCH)
                return FUNC5(error, BUS_ERROR_NOTHING_TO_CLEAN, "No matching resources found.");
        if (r == -EBUSY)
                return FUNC5(error, BUS_ERROR_UNIT_BUSY, "Unit is not inactive or has pending job.");
        if (r < 0)
                return r;

        return FUNC9(message, NULL);
}