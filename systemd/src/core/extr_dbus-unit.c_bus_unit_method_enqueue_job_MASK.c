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
typedef  size_t JobType ;
typedef  scalar_t__ JobMode ;
typedef  int /*<<< orphan*/  BusUnitQueueFlags ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE ; 
 int /*<<< orphan*/  BUS_UNIT_QUEUE_VERBOSE_REPLY ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t JOB_RESTART ; 
 size_t JOB_TRY_RESTART ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * polkit_message_for_job ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,char const**,char const**) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

int FUNC10(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        BusUnitQueueFlags flags = BUS_UNIT_QUEUE_VERBOSE_REPLY;
        const char *jtype, *smode;
        Unit *u = userdata;
        JobType type;
        JobMode mode;
        int r;

        FUNC0(message);
        FUNC0(u);

        r = FUNC8(message, "ss", &jtype, &smode);
        if (r < 0)
                return r;

        /* Parse the two magic reload types "reload-or-…" manually */
        if (FUNC9(jtype, "reload-or-restart")) {
                type = JOB_RESTART;
                flags |= BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE;
        } else if (FUNC9(jtype, "reload-or-try-restart")) {
                type = JOB_TRY_RESTART;
                flags |= BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE;
        } else {
                /* And the rest generically */
                type = FUNC4(jtype);
                if (type < 0)
                        return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Job type %s invalid", jtype);
        }

        mode = FUNC3(smode);
        if (mode < 0)
                return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Job mode %s invalid", smode);

        r = FUNC6(
                        u, message,
                        FUNC5(type),
                        error);
        if (r < 0)
                return r;

        r = FUNC2(
                        u,
                        jtype,
                        CAP_SYS_ADMIN,
                        polkit_message_for_job[type],
                        true,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        return FUNC1(message, u, type, mode, flags, error);
}