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
 int FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,int) ; 

__attribute__((used)) static int FUNC4(Context *context, const char *ifname, int family, const char *value) {
        const char *mtu, *p;
        int r;

        /* [<mtu>][:<macaddr>] */

        p = FUNC2(value, ':');
        if (!p)
                mtu = value;
        else
                mtu = FUNC3(value, p - value);

        r = FUNC1(context, ifname, family, mtu);
        if (r < 0)
                return r;

        if (!p)
                return 0;

        r = FUNC0(context, ifname, p + 1);
        if (r < 0)
                return r;

        return 0;
}