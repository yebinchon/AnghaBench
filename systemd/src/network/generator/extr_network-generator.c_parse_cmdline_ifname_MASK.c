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
struct ether_addr {int dummy; } ;
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char const*,struct ether_addr*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,struct ether_addr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*,int) ; 

__attribute__((used)) static int FUNC5(Context *context, const char *key, const char *value) {
        struct ether_addr mac;
        const char *name, *p;
        int r;

        /* ifname=<interface>:<MAC> */

        if (FUNC2(key, value))
                return -EINVAL;

        p = FUNC3(value, ':');
        if (!p)
                return -EINVAL;

        name = FUNC4(value, p - value);

        r = FUNC0(p + 1, &mac);
        if (r < 0)
                return r;

        return FUNC1(context, name, &mac, NULL);
}