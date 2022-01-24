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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NO_SUCH_DYNAMIC_USER ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *,char,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        uid_t uid;
        int r;

        FUNC1(message);
        FUNC1(m);

        r = FUNC4(message, 's', &name);
        if (r < 0)
                return r;

        if (!FUNC0(m))
                return FUNC3(error, SD_BUS_ERROR_NOT_SUPPORTED, "Dynamic users are only supported in the system instance.");
        if (!FUNC6(name))
                return FUNC3(error, SD_BUS_ERROR_INVALID_ARGS, "User name invalid: %s", name);

        r = FUNC2(m, name, &uid);
        if (r == -ESRCH)
                return FUNC3(error, BUS_ERROR_NO_SUCH_DYNAMIC_USER, "Dynamic user %s does not exist.", name);
        if (r < 0)
                return r;

        return FUNC5(message, "u", (uint32_t) uid);
}