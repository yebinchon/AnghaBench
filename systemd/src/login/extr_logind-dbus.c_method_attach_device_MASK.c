#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_14__ {char* id; } ;
typedef  TYPE_2__ Seat ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,char const*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,TYPE_1__*,char const*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC9 (TYPE_1__*,char*,char const**,char const**,int*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *sysfs, *seat;
        Manager *m = userdata;
        int interactive, r;

        FUNC2(message);
        FUNC2(m);

        r = FUNC9(message, "ssb", &seat, &sysfs, &interactive);
        if (r < 0)
                return r;

        if (!FUNC6(sysfs))
                return FUNC8(error, SD_BUS_ERROR_INVALID_ARGS, "Path %s is not normalized", sysfs);
        if (!FUNC7(sysfs, "/sys"))
                return FUNC8(error, SD_BUS_ERROR_INVALID_ARGS, "Path %s is not in /sys", sysfs);

        if (FUNC1(seat) || FUNC0(seat)) {
                Seat *found;

                r = FUNC5(m, message, seat, error, &found);
                if (r < 0)
                        return r;

                seat = found->id;

        } else if (!FUNC11(seat)) /* Note that a seat does not have to exist yet for this operation to succeed */
                return FUNC8(error, SD_BUS_ERROR_INVALID_ARGS, "Seat name %s is not valid", seat);

        r = FUNC4(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.attach-device",
                        NULL,
                        interactive,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        r = FUNC3(m, seat, sysfs);
        if (r < 0)
                return r;

        return FUNC10(message, NULL);
}