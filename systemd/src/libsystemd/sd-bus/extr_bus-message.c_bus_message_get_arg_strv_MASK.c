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
typedef  char** sd_bus_message ;

/* Variables and functions */
 int ENXIO ; 
 char SD_BUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char***) ; 
 int FUNC2 (char***,unsigned int,char*,char const**) ; 
 int FUNC3 (char***,char***) ; 

int FUNC4(sd_bus_message *m, unsigned i, char ***strv) {
        const char *contents;
        char type;
        int r;

        FUNC1(m);
        FUNC1(strv);

        r = FUNC2(m, i, &type, &contents);
        if (r < 0)
                return r;

        if (type != SD_BUS_TYPE_ARRAY)
                return -ENXIO;
        if (!FUNC0(contents, "s", "o", "g"))
                return -ENXIO;

        return FUNC3(m, strv);
}