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
typedef  int /*<<< orphan*/  Manager ;
typedef  scalar_t__ JobMode ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_START ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const**,char const**) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *name, *smode;
        Manager *m = userdata;
        JobMode mode;
        Unit *u;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "start", error);
        if (r < 0)
                return r;

        r = FUNC6(message, "ss", &name, &smode);
        if (r < 0)
                return r;

        mode = FUNC3(smode);
        if (mode < 0)
                return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Job mode %s is invalid.", smode);

        r = FUNC2(m, message, error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC8(m, message, name, &u, error);
        if (r < 0)
                return r;

        r = FUNC7(m, message, error);
        if (r < 0)
                return r;

        /* Finally, start it */
        return FUNC1(message, u, JOB_START, mode, 0, error);
}