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
typedef  char const* sd_bus_message ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  SD_BUS_TYPE_SIGNATURE ; 
 int /*<<< orphan*/  SD_BUS_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int FUNC2 (char const**,unsigned int,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const**,char,char const**) ; 

int FUNC4(sd_bus_message *m, unsigned i, const char **str) {
        char type;
        int r;

        FUNC1(m);
        FUNC1(str);

        r = FUNC2(m, i, &type, NULL);
        if (r < 0)
                return r;

        if (!FUNC0(type, SD_BUS_TYPE_STRING, SD_BUS_TYPE_OBJECT_PATH, SD_BUS_TYPE_SIGNATURE))
                return -ENXIO;

        return FUNC3(m, type, str);
}