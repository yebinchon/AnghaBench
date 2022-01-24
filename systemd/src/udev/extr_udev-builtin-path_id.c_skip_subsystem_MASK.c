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
typedef  char const sd_device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const**) ; 
 scalar_t__ FUNC2 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static sd_device *FUNC4(sd_device *dev, const char *subsys) {
        sd_device *parent;

        FUNC0(dev);
        FUNC0(subsys);

        for (parent = dev; ; ) {
                const char *subsystem;

                if (FUNC2(parent, &subsystem) < 0)
                        break;

                if (!FUNC3(subsystem, subsys))
                        break;

                dev = parent;
                if (FUNC1(dev, &parent) < 0)
                        break;
        }

        return dev;
}