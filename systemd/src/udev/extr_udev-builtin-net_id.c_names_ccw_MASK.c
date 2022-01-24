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
struct netnames {int /*<<< orphan*/  type; int /*<<< orphan*/  ccw_busid; } ;
typedef  struct netnames sd_device ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (size_t,int,int) ; 
 int /*<<< orphan*/  NET_CCW ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct netnames*) ; 
 int FUNC3 (struct netnames*,struct netnames**) ; 
 int FUNC4 (struct netnames*,char const**) ; 
 int FUNC5 (struct netnames*,char const**) ; 
 struct netnames* FUNC6 (struct netnames*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 size_t FUNC8 (char const*) ; 
 size_t FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(sd_device *dev, struct netnames *names) {
        sd_device *cdev;
        const char *bus_id, *subsys;
        size_t bus_id_len;
        size_t bus_id_start;
        int r;

        FUNC2(dev);
        FUNC2(names);

        /* Retrieve the associated CCW device */
        r = FUNC3(dev, &cdev);
        if (r < 0)
                return r;

        /* skip virtio subsystem if present */
        cdev = FUNC6(cdev);
        if (!cdev)
                return -ENOENT;

        r = FUNC4(cdev, &subsys);
        if (r < 0)
                return r;

        /* Network devices are either single or grouped CCW devices */
        if (!FUNC1(subsys, "ccwgroup", "ccw"))
                return -ENOENT;

        /* Retrieve bus-ID of the CCW device.  The bus-ID uniquely
         * identifies the network device on the Linux on System z channel
         * subsystem.  Note that the bus-ID contains lowercase characters.
         */
        r = FUNC5(cdev, &bus_id);
        if (r < 0)
                return r;

        /* Check the length of the bus-ID. Rely on the fact that the kernel provides a correct bus-ID;
         * alternatively, improve this check and parse and verify each bus-ID part...
         */
        bus_id_len = FUNC8(bus_id);
        if (!FUNC0(bus_id_len, 8, 9))
                return -EINVAL;

        /* Strip leading zeros from the bus id for aesthetic purposes. This
         * keeps the ccw names stable, yet much shorter in general case of
         * bus_id 0.0.0600 -> 600. This is similar to e.g. how PCI domain is
         * not prepended when it is zero. Preserve the last 0 for 0.0.0000.
         */
        bus_id_start = FUNC9(bus_id, ".0");
        bus_id += bus_id_start < bus_id_len ? bus_id_start : bus_id_len - 1;

        /* Store the CCW bus-ID for use as network device name */
        if (FUNC7(names->ccw_busid, sizeof(names->ccw_busid), "c%s", bus_id))
                names->type = NET_CCW;

        return 0;
}