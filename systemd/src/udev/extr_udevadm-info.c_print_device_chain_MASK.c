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
typedef  int /*<<< orphan*/  sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const**) ; 

__attribute__((used)) static int FUNC7(sd_device *device) {
        sd_device *child, *parent;
        const char *str;

        FUNC1("\n"
               "Udevadm info starts with the device specified by the devpath and then\n"
               "walks up the chain of parent devices. It prints for every device\n"
               "found, all possible attributes in the udev rules key format.\n"
               "A rule to match, can be composed by the attributes of the device\n"
               "and the attributes from one single parent device.\n"
               "\n");

        (void) FUNC2(device, &str);
        FUNC1("  looking at device '%s':\n", str);
        (void) FUNC6(device, &str);
        FUNC1("    KERNEL==\"%s\"\n", str);
        if (FUNC5(device, &str) < 0)
                str = "";
        FUNC1("    SUBSYSTEM==\"%s\"\n", str);
        if (FUNC3(device, &str) < 0)
                str = "";
        FUNC1("    DRIVER==\"%s\"\n", str);
        FUNC0(device, "ATTR");

        for (child = device; FUNC4(child, &parent) >= 0; child = parent) {
                (void) FUNC2(parent, &str);
                FUNC1("  looking at parent device '%s':\n", str);
                (void) FUNC6(parent, &str);
                FUNC1("    KERNELS==\"%s\"\n", str);
                if (FUNC5(parent, &str) < 0)
                        str = "";
                FUNC1("    SUBSYSTEMS==\"%s\"\n", str);
                if (FUNC3(parent, &str) < 0)
                        str = "";
                FUNC1("    DRIVERS==\"%s\"\n", str);
                FUNC0(parent, "ATTRS");
        }

        return 0;
}