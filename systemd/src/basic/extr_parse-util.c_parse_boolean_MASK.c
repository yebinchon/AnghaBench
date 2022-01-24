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
 scalar_t__ FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(const char *v) {
        if (!v)
                return -EINVAL;

        if (FUNC1(v, "1") || FUNC0(v, "yes") || FUNC0(v, "y") || FUNC0(v, "true") || FUNC0(v, "t") || FUNC0(v, "on"))
                return 1;
        else if (FUNC1(v, "0") || FUNC0(v, "no") || FUNC0(v, "n") || FUNC0(v, "false") || FUNC0(v, "f") || FUNC0(v, "off"))
                return 0;

        return -EINVAL;
}