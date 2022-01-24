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
struct netnames {int /*<<< orphan*/  type; int /*<<< orphan*/  bcma_core; } ;
typedef  struct netnames sd_device ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NET_BCMA ; 
 int /*<<< orphan*/  FUNC0 (struct netnames*) ; 
 int FUNC1 (struct netnames*,char*,int /*<<< orphan*/ *,struct netnames**) ; 
 int FUNC2 (struct netnames*,char const**) ; 
 int FUNC3 (char const*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(sd_device *dev, struct netnames *names) {
        sd_device *bcmadev;
        unsigned core;
        const char *sysname;
        int r;

        FUNC0(dev);
        FUNC0(names);

        r = FUNC1(dev, "bcma", NULL, &bcmadev);
        if (r < 0)
                return r;

        r = FUNC2(bcmadev, &sysname);
        if (r < 0)
                return r;

        /* bus num:core num */
        if (FUNC3(sysname, "bcma%*u:%u", &core) != 1)
                return -EINVAL;
        /* suppress the common core == 0 */
        if (core > 0)
                FUNC4(names->bcma_core, "b%u", core);

        names->type = NET_BCMA;
        return 0;
}