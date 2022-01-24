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
 int /*<<< orphan*/  SD_BUS_TYPE_STRUCT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC5(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        const char *contents;
        int r;

        r = FUNC2(m, NULL, &contents);
        if (r < 0)
                return r;

        r = FUNC0(m, SD_BUS_TYPE_STRUCT, contents);
        if (r < 0)
                return r;

        r = FUNC3(m, contents[0], userdata);
        if (r < 0)
                return r;

        r = FUNC4(m, contents+1);
        if (r < 0)
                return r;

        r = FUNC1(m);
        if (r < 0)
                return r;

        return 0;
}