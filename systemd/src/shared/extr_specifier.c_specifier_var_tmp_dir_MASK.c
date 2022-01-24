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
 int ENOMEM ; 
 char* FUNC0 (char const*) ; 
 int FUNC1 (char const**) ; 

int FUNC2(char specifier, const void *data, const void *userdata, char **ret) {
        const char *p;
        char *copy;
        int r;

        r = FUNC1(&p);
        if (r < 0)
                return r;

        copy = FUNC0(p);
        if (!copy)
                return -ENOMEM;

        *ret = copy;
        return 0;
}