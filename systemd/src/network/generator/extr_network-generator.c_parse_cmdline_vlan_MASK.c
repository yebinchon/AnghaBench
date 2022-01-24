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
typedef  int /*<<< orphan*/  NetDev ;
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 char* FUNC4 (char const*,char) ; 
 char* FUNC5 (char const*,int) ; 

__attribute__((used)) static int FUNC6(Context *context, const char *key, const char *value) {
        const char *name, *p;
        NetDev *netdev;
        int r;

        if (FUNC3(key, value))
                return -EINVAL;

        p = FUNC4(value, ':');
        if (!p)
                return -EINVAL;

        name = FUNC5(value, p - value);

        netdev = FUNC0(context, name);
        if (!netdev) {
                r = FUNC1(context, "vlan", name, &netdev);
                if (r < 0)
                        return r;
        }

        return FUNC2(context, p + 1, name);
}