#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_2__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        uint64_t limit;
        int r;

        FUNC1(message);

        r = FUNC7(message, "t", &limit);
        if (r < 0)
                return r;
        if (!FUNC0(limit))
                return FUNC6(error, SD_BUS_ERROR_INVALID_ARGS, "New limit out of range");

        r = FUNC4(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.machine1.manage-machines",
                        NULL,
                        false,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Will call us back */

        /* Set up the machine directory if necessary */
        r = FUNC9(error);
        if (r < 0)
                return r;

        (void) FUNC2("/var/lib/machines", 0, limit);

        r = FUNC3("/var/lib/machines", 0, limit);
        if (r == -ENOTTY)
                return FUNC6(error, SD_BUS_ERROR_NOT_SUPPORTED, "Quota is only supported on btrfs.");
        if (r < 0)
                return FUNC5(error, r, "Failed to adjust quota limit: %m");

        return FUNC8(message, NULL);
}