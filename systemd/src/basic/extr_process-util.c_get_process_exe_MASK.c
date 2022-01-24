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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*,char*) ; 
 int FUNC2 (char const*,char**) ; 
 char* FUNC3 (scalar_t__,char*) ; 

int FUNC4(pid_t pid, char **name) {
        const char *p;
        char *d;
        int r;

        FUNC0(pid >= 0);

        p = FUNC3(pid, "exe");
        r = FUNC2(p, name);
        if (r < 0)
                return r;

        d = FUNC1(*name, " (deleted)");
        if (d)
                *d = '\0';

        return 0;
}