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
 int ENOENT ; 
 int /*<<< orphan*/  GID_INVALID ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  USEC_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const**) ; 
 int errno ; 
 char* FUNC2 (char*,char const*,char*,char const*) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(sd_device *device, const char *tag, bool add) {
        const char *id;
        char *path;
        int r;

        FUNC0(device);
        FUNC0(tag);

        r = FUNC1(device, &id);
        if (r < 0)
                return r;

        path = FUNC2("/run/udev/tags/", tag, "/", id);

        if (add) {
                r = FUNC3(path, true, USEC_INFINITY, UID_INVALID, GID_INVALID, 0444);
                if (r < 0)
                        return r;
        } else {
                r = FUNC4(path);
                if (r < 0 && errno != ENOENT)
                        return -errno;
        }

        return 0;
}