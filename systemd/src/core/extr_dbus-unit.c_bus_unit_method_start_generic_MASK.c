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

/* Variables and functions */
 int /*<<< orphan*/  BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 size_t _JOB_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (size_t) ; 
 char* FUNC5 (size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * polkit_message_for_job ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,char const**) ; 
 char* FUNC9 (char*,char*) ; 

int FUNC10(
                sd_bus_message *message,
                Unit *u,
                JobType job_type,
                bool reload_if_possible,
                sd_bus_error *error) {

        const char *smode, *verb;
        JobMode mode;
        int r;

        FUNC0(*message);
        FUNC0(*u);
        FUNC0(job_type >= 0 && job_type < _JOB_TYPE_MAX);

        r = FUNC6(
                        u, message,
                        FUNC4(job_type),
                        error);
        if (r < 0)
                return r;

        r = FUNC8(message, "s", &smode);
        if (r < 0)
                return r;

        mode = FUNC3(smode);
        if (mode < 0)
                return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Job mode %s invalid", smode);

        if (reload_if_possible)
                verb = FUNC9("reload-or-", FUNC5(job_type));
        else
                verb = FUNC5(job_type);

        r = FUNC2(
                        u,
                        verb,
                        CAP_SYS_ADMIN,
                        polkit_message_for_job[job_type],
                        true,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        return FUNC1(message, u, job_type, mode,
                                  reload_if_possible ? BUS_UNIT_QUEUE_RELOAD_IF_POSSIBLE : 0, error);
}