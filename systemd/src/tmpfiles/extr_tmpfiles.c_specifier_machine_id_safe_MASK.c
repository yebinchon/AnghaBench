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

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char,void const*,void const*,char**) ; 

__attribute__((used)) static int FUNC2(char specifier, const void *data, const void *userdata, char **ret) {
        int r;

        /* If /etc/machine_id is missing or empty (e.g. in a chroot environment)
         * return a recognizable error so that the caller can skip the rule
         * gracefully. */

        r = FUNC1(specifier, data, userdata, ret);
        if (FUNC0(r, -ENOENT, -ENOMEDIUM))
                return -ENXIO;

        return r;
}