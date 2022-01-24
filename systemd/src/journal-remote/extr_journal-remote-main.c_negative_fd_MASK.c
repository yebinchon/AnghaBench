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
 int FUNC0 (char const*,int*) ; 

__attribute__((used)) static int FUNC1(const char *spec) {
        /* Return a non-positive number as its inverse, -EINVAL otherwise. */

        int fd, r;

        r = FUNC0(spec, &fd);
        if (r < 0)
                return r;

        if (fd > 0)
                return -EINVAL;
        else
                return -fd;
}