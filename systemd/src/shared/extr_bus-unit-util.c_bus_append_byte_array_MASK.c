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

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_TYPE_STRING ; 
 char SD_BUS_TYPE_STRUCT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char,void const*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char,char*) ; 

__attribute__((used)) static int FUNC5(sd_bus_message *m, const char *field, const void *buf, size_t n) {
        int r;

        r = FUNC4(m, SD_BUS_TYPE_STRUCT, "sv");
        if (r < 0)
                return FUNC0(r);

        r = FUNC2(m, SD_BUS_TYPE_STRING, field);
        if (r < 0)
                return FUNC0(r);

        r = FUNC4(m, 'v', "ay");
        if (r < 0)
                return FUNC0(r);

        r = FUNC1(m, 'y', buf, n);
        if (r < 0)
                return FUNC0(r);

        r = FUNC3(m);
        if (r < 0)
                return FUNC0(r);

        r = FUNC3(m);
        if (r < 0)
                return FUNC0(r);

        return 1;
}