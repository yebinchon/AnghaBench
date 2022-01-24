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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  UnitWriteFlags ;
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char*,char const*,...) ; 

__attribute__((used)) static int FUNC5(
                Unit *u,
                const char *name,
                int *p,
                sd_bus_message *message,
                UnitWriteFlags flags,
                sd_bus_error *error) {

        int32_t k;
        int r;

        FUNC1(p);

        r = FUNC3(message, "i", &k);
        if (r < 0)
                return r;

        if (k > 255)
                return FUNC2(error, SD_BUS_ERROR_INVALID_ARGS, "Exit status must be in range 0…255 or negative.");

        if (!FUNC0(flags)) {
                *p = k < 0 ? -1 : k;

                if (k < 0)
                        FUNC4(u, flags, name, "%s=", name);
                else
                        FUNC4(u, flags, name, "%s=%i", name, k);
        }

        return 1;
}