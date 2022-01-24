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
 int FUNC1 (char***,char*) ; 

int FUNC2(char ***l, const char *value) {
        char *v;

        if (!value)
                return 0;

        v = FUNC0(value);
        if (!v)
                return -ENOMEM;

        return FUNC1(l, v);
}