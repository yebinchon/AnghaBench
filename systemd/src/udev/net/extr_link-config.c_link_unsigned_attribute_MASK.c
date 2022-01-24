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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char*,char const*,char const*) ; 
 int FUNC3 (char const*,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const**) ; 

__attribute__((used)) static int FUNC5(sd_device *device, const char *attr, unsigned *type) {
        const char *s;
        int r;

        r = FUNC4(device, attr, &s);
        if (r < 0)
                return FUNC1(device, r, "Failed to query %s: %m", attr);

        r = FUNC3(s, type);
        if (r < 0)
                return FUNC2(device, r, "Failed to parse %s \"%s\": %m", attr, s);

        FUNC0(device, "Device has %s=%u", attr, *type);
        return 0;
}