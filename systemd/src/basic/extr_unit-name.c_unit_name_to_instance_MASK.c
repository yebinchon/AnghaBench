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
 int /*<<< orphan*/  UNIT_NAME_ANY ; 
 int UNIT_NAME_INSTANCE ; 
 int UNIT_NAME_PLAIN ; 
 int UNIT_NAME_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ ) ; 

int FUNC5(const char *n, char **ret) {
        const char *p, *d;

        FUNC0(n);

        if (!FUNC4(n, UNIT_NAME_ANY))
                return -EINVAL;

        /* Everything past the first @ and before the last . is the instance */
        p = FUNC1(n, '@');
        if (!p) {
                if (ret)
                        *ret = NULL;
                return UNIT_NAME_PLAIN;
        }

        p++;

        d = FUNC3(p, '.');
        if (!d)
                return -EINVAL;

        if (ret) {
                char *i = FUNC2(p, d-p);
                if (!i)
                        return -ENOMEM;

                *ret = i;
        }
        return d > p ? UNIT_NAME_INSTANCE : UNIT_NAME_TEMPLATE;
}