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
struct netnames {int /*<<< orphan*/  type; int /*<<< orphan*/  netdevsim_path; } ;
typedef  struct netnames sd_device ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  NAMING_NETDEVSIM ; 
 int /*<<< orphan*/  NET_NETDEVSIM ; 
 int /*<<< orphan*/  FUNC0 (struct netnames*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct netnames*,char*,int /*<<< orphan*/ *,struct netnames**) ; 
 int FUNC3 (struct netnames*,char*,char const**) ; 
 int FUNC4 (struct netnames*,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,char*,unsigned int,char const*) ; 
 int FUNC6 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static int FUNC7(sd_device *dev, struct netnames *names) {
        sd_device *netdevsimdev;
        const char *sysname;
        unsigned addr;
        const char *port_name = NULL;
        int r;
        bool ok;

        if (!FUNC1(NAMING_NETDEVSIM))
                return 0;

        FUNC0(dev);
        FUNC0(names);

        r = FUNC2(dev, "netdevsim", NULL, &netdevsimdev);
        if (r < 0)
                return r;
        r = FUNC4(netdevsimdev, &sysname);
        if (r < 0)
                return r;

        if (FUNC6(sysname, "netdevsim%u", &addr) != 1)
                return -EINVAL;

        r = FUNC3(dev, "phys_port_name", &port_name);
        if (r < 0)
                return r;

        ok = FUNC5(names->netdevsim_path, sizeof(names->netdevsim_path), "i%un%s", addr, port_name);
        if (!ok)
                return -ENOBUFS;

        names->type = NET_NETDEVSIM;

        return 0;
}