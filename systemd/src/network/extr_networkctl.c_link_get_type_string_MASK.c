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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 char* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static char *FUNC5(unsigned short iftype, sd_device *d) {
        const char *t, *devtype;
        char *p;

        if (d &&
            FUNC3(d, &devtype) >= 0 &&
            !FUNC2(devtype))
                return FUNC4(devtype);

        t = FUNC0(iftype);
        if (!t)
                return NULL;

        p = FUNC4(t);
        if (!p)
                return NULL;

        FUNC1(p);
        return p;
}