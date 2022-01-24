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
 int /*<<< orphan*/  SD_BUS_TYPE_ARRAY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const**,char const**) ; 
 int FUNC3 (char***,char const*) ; 

__attribute__((used)) static int FUNC4(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        const char *type, *path;
        char ***p = userdata;
        int r;

        r = FUNC0(m, SD_BUS_TYPE_ARRAY, "(ss)");
        if (r < 0)
                return r;

        while ((r = FUNC2(m, "(ss)", &type, &path)) > 0) {

                r = FUNC3(p, type);
                if (r < 0)
                        return r;

                r = FUNC3(p, path);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return r;

        r = FUNC1(m);
        if (r < 0)
                return r;

        return 0;
}