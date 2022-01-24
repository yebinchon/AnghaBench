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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 int errno ; 
 char* FUNC2 (char*,char const*) ; 
 int FUNC3 (char*) ; 

int FUNC4(sd_device *device) {
        const char *id;
        char *path;
        int r;

        FUNC0(device);

        r = FUNC1(device, &id);
        if (r < 0)
                return r;

        path = FUNC2("/run/udev/data/", id);

        r = FUNC3(path);
        if (r < 0 && errno != ENOENT)
                return -errno;

        return 0;
}