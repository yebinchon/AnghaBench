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
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(Context *context, const char *key, const char *value) {
        const char *p;
        int r;

        if (FUNC3(key, value))
                return -EINVAL;

        p = FUNC4(value, ':');
        if (!p)
                /* ip={dhcp|on|any|dhcp6|auto6|either6} */
                return FUNC0(context, "", value);

        if (value[0] == '[')
                return FUNC1(context, AF_INET6, value);

        r = FUNC1(context, AF_INET, value);
        if (r < 0)
                return FUNC2(context, value);

        return 0;
}