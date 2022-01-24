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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const**,int /*<<< orphan*/ *) ; 
 int FUNC4 (void*,char const*) ; 

__attribute__((used)) static int FUNC5(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        const char *name;
        int r;

        FUNC0(bus);
        FUNC0(m);

        r = FUNC1(m, 'a', "(so)");
        if (r < 0)
                return r;

        while ((r = FUNC3(m, "(so)", &name, NULL)) > 0) {
                r = FUNC4(userdata, name);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return r;

        return FUNC2(m);
}