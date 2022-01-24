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
typedef  unsigned int sd_device ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,char*) ; 
 int FUNC2 (unsigned int*,int,char*,...) ; 
 int FUNC3 (char const*,unsigned int*) ; 
 int FUNC4 (unsigned int*,char*,char const**) ; 

__attribute__((used)) static int FUNC5(sd_device *device, unsigned *ret) {
        const char *max_brightness_str;
        unsigned max_brightness;
        int r;

        FUNC0(device);
        FUNC0(ret);

        r = FUNC4(device, "max_brightness", &max_brightness_str);
        if (r < 0)
                return FUNC2(device, r, "Failed to read 'max_brightness' attribute: %m");

        r = FUNC3(max_brightness_str, &max_brightness);
        if (r < 0)
                return FUNC2(device, r, "Failed to parse 'max_brightness' \"%s\": %m", max_brightness_str);

        if (max_brightness <= 0) {
                FUNC1(device, "Maximum brightness is 0, ignoring device.");
                return -EINVAL;
        }

        *ret = max_brightness;
        return 0;
}