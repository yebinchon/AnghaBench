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
 int errno ; 
 unsigned long FUNC0 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC1(const char *p, const char **e, unsigned long *ret) {
        char *ee = NULL;
        unsigned long value;

        errno = 0;
        value = FUNC0(p, &ee, 10);
        if (errno > 0)
                return -errno;
        if (ee == p)
                return -EINVAL;

        *ret = value;
        *e = ee;
        return 0;
}