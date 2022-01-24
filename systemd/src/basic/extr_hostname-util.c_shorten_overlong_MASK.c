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

/* Variables and functions */
 int EDOM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HOST_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

int FUNC6(const char *s, char **ret) {
        char *h, *p;

        /* Shorten an overlong name to HOST_NAME_MAX or to the first dot,
         * whatever comes earlier. */

        FUNC0(s);

        h = FUNC4(s);
        if (!h)
                return -ENOMEM;

        if (FUNC2(h, false)) {
                *ret = h;
                return 0;
        }

        p = FUNC3(h, '.');
        if (p)
                *p = 0;

        FUNC5(h, HOST_NAME_MAX);

        if (!FUNC2(h, false)) {
                FUNC1(h);
                return -EDOM;
        }

        *ret = h;
        return 1;
}