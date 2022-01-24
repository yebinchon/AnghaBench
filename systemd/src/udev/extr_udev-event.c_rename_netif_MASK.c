#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  rtnl; int /*<<< orphan*/ * dev; } ;
typedef  TYPE_1__ UdevEvent ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ACTION_ADD ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC10(UdevEvent *event) {
        sd_device *dev = event->dev;
        const char *oldname;
        int ifindex, r;

        if (!event->name)
                return 0; /* No new name is requested. */

        r = FUNC8(dev, &oldname);
        if (r < 0)
                return FUNC4(dev, r, "Failed to get sysname: %m");

        if (FUNC9(event->name, oldname))
                return 0; /* The interface name is already requested name. */

        if (!FUNC1(dev, DEVICE_ACTION_ADD))
                return 0; /* Rename the interface only when it is added. */

        r = FUNC7(dev, &ifindex);
        if (r == -ENOENT)
                return 0; /* Device is not a network interface. */
        if (r < 0)
                return FUNC4(dev, r, "Failed to get ifindex: %m");

        r = FUNC6(&event->rtnl, ifindex, event->name);
        if (r < 0)
                return FUNC4(dev, r, "Failed to rename network interface %i from '%s' to '%s': %m",
                                              ifindex, oldname, event->name);

        /* Set ID_RENAMING boolean property here, and drop it in the corresponding move uevent later. */
        r = FUNC0(dev, "ID_RENAMING", "1");
        if (r < 0)
                return FUNC5(dev, r, "Failed to add 'ID_RENAMING' property: %m");

        r = FUNC2(dev, event->name);
        if (r < 0)
                return FUNC5(dev, r, "Failed to update properties with new name '%s': %m", event->name);

        FUNC3(dev, "Network interface %i is renamed from '%s' to '%s'", ifindex, oldname, event->name);

        return 1;
}