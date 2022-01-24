#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_5__ {TYPE_1__* userdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_2__ Image ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC7(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Image *image = userdata;
        Manager *m = image->userdata;
        uint64_t limit;
        int r;

        FUNC1(message);

        r = FUNC5(message, "t", &limit);
        if (r < 0)
                return r;
        if (!FUNC0(limit))
                return FUNC4(error, SD_BUS_ERROR_INVALID_ARGS, "New limit out of range");

        r = FUNC2(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.machine1.manage-images",
                        NULL,
                        false,
                        UID_INVALID,
                        &m->polkit_registry,
                        error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* Will call us back */

        r = FUNC3(image, limit);
        if (r < 0)
                return r;

        return FUNC6(message, NULL);
}