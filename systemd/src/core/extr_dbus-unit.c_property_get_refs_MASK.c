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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
struct TYPE_2__ {int /*<<< orphan*/  bus_track; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Unit *u = userdata;
        const char *i;
        int r;

        FUNC0(bus);
        FUNC0(reply);

        r = FUNC3(reply, 'a', "s");
        if (r < 0)
                return r;

        for (i = FUNC5(u->bus_track); i; i = FUNC6(u->bus_track)) {
                int c, k;

                c = FUNC4(u->bus_track, i);
                if (c < 0)
                        return c;

                /* Add the item multiple times if the ref count for each is above 1 */
                for (k = 0; k < c; k++) {
                        r = FUNC1(reply, "s", i);
                        if (r < 0)
                                return r;
                }
        }

        return FUNC2(reply);
}