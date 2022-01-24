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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 

char* FUNC4(const char *path) {
        char *d, *dir, *dir2;

        FUNC0(path);

        d = FUNC3(path);
        if (!d)
                return NULL;

        dir = FUNC1(d);
        FUNC0(dir);

        if (dir == d)
                return d;

        dir2 = FUNC3(dir);
        FUNC2(d);

        return dir2;
}