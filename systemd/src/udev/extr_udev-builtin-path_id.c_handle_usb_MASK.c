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
 int /*<<< orphan*/  FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static sd_device *FUNC6(sd_device *parent, char **path) {
        const char *devtype, *str, *port;

        if (FUNC2(parent, &devtype) < 0)
                return parent;
        if (!FUNC0(devtype, "usb_interface", "usb_device"))
                return parent;

        if (FUNC3(parent, &str) < 0)
                return parent;
        port = FUNC5(str, '-');
        if (!port)
                return parent;
        port++;

        FUNC1(path, "usb-0:%s", port);
        return FUNC4(parent, "usb");
}