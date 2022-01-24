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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static bool FUNC4(sd_device *dev) {
        const char *ready;

        FUNC0(dev);

        if (FUNC1(dev) > 0)
                return false;

        if (FUNC3(dev, "SYSTEMD_READY", &ready) < 0)
                return true;

        return FUNC2(ready) != 0;
}