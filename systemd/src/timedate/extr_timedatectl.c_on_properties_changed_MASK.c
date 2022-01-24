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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char *name;
        int r;

        FUNC0(m);

        r = FUNC3(m, "s", &name);
        if (r < 0)
                return FUNC1(r, "Failed to read interface name: %m");

        if (!FUNC5(name, "org.freedesktop.timesync1.Manager"))
                return 0;

        return FUNC4(FUNC2(m));
}