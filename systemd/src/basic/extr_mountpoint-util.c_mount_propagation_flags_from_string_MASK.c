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
 unsigned long MS_PRIVATE ; 
 unsigned long MS_SHARED ; 
 unsigned long MS_SLAVE ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(const char *name, unsigned long *ret) {

        if (FUNC0(name))
                *ret = 0;
        else if (FUNC1(name, "shared"))
                *ret = MS_SHARED;
        else if (FUNC1(name, "slave"))
                *ret = MS_SLAVE;
        else if (FUNC1(name, "private"))
                *ret = MS_PRIVATE;
        else
                return -EINVAL;
        return 0;
}