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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,unsigned int,char**,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*) ; 
 int FUNC3 (int,char*,char*) ; 

__attribute__((used)) static int FUNC4(char **p, unsigned flags) {
        char *chased;
        int r;

        FUNC0(p);

        if (!*p)
                return 0;

        r = FUNC1(*p, NULL, flags, &chased, NULL);
        if (r < 0)
                return FUNC3(r, "Failed to resolve path %s: %m", *p);

        return FUNC2(*p, chased);
}