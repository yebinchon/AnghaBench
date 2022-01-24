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
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC7(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *value,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        const char *t;
        int r;

        FUNC0(bus);
        FUNC0(value);

        r = FUNC6(value, "s", &t);
        if (r < 0)
                return r;

        if (FUNC1(t))
                FUNC4(m);
        else {
                int level;

                level = FUNC2(t);
                if (level < 0)
                        return FUNC5(error, SD_BUS_ERROR_INVALID_ARGS, "Invalid log level '%s'", t);

                FUNC3(m, level);
        }

        return 0;
}