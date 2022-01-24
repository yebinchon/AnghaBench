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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  Unit ;
typedef  scalar_t__ KillWho ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_KILL ; 
 scalar_t__ KILL_ALL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        const char *swho;
        int32_t signo;
        KillWho who;
        int r;

        FUNC2(message);
        FUNC2(u);

        r = FUNC6(u, message, "stop", error);
        if (r < 0)
                return r;

        r = FUNC8(message, "si", &swho, &signo);
        if (r < 0)
                return r;

        if (FUNC4(swho))
                who = KILL_ALL;
        else {
                who = FUNC5(swho);
                if (who < 0)
                        return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid who argument %s", swho);
        }

        if (!FUNC1(signo))
                return FUNC7(error, SD_BUS_ERROR_INVALID_ARGS, "Signal number out of range.");

        r = FUNC3(
                        u,
                        "kill",
                        CAP_KILL,
                        FUNC0("Authentication is required to send a UNIX signal to the processes of '$(unit)'."),
                        true,
                        message,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC10(u, who, signo, error);
        if (r < 0)
                return r;

        return FUNC9(message, NULL);
}