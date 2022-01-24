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
struct utsname {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct utsname*) ; 

int FUNC6(char **ret) {
        struct utsname u;
        char *k;

        /* This call will rather fail than make up a name. It will not return "localhost" either. */

        FUNC0(FUNC5(&u) >= 0);

        if (FUNC2(u.nodename))
                return -ENXIO;

        if (FUNC4(u.nodename, "(none)"))
                return -ENXIO;

        if (FUNC1(u.nodename))
                return -ENXIO;

        k = FUNC3(u.nodename);
        if (!k)
                return -ENOMEM;

        *ret = k;
        return 0;
}