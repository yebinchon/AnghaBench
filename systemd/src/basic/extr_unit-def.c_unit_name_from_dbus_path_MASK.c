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
 int EINVAL ; 
 int ENOMEM ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 

int FUNC2(const char *path, char **name) {
        const char *e;
        char *n;

        e = FUNC1(path, "/org/freedesktop/systemd1/unit/");
        if (!e)
                return -EINVAL;

        n = FUNC0(e);
        if (!n)
                return -ENOMEM;

        *name = n;
        return 0;
}