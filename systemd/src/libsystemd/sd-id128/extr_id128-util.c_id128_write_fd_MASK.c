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
typedef  int /*<<< orphan*/  sd_id128_t ;
typedef  scalar_t__ Id128Format ;

/* Variables and functions */
 scalar_t__ ID128_UUID ; 
 scalar_t__ _ID128_FORMAT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(int fd, Id128Format f, sd_id128_t id, bool do_sync) {
        char buffer[36 + 2];
        size_t sz;
        int r;

        FUNC0(fd >= 0);
        FUNC0(f < _ID128_FORMAT_MAX);

        if (f != ID128_UUID) {
                FUNC5(id, buffer);
                buffer[32] = '\n';
                sz = 33;
        } else {
                FUNC3(id, buffer);
                buffer[36] = '\n';
                sz = 37;
        }

        r = FUNC4(fd, buffer, sz, false);
        if (r < 0)
                return r;

        if (do_sync) {
                if (FUNC1(fd) < 0)
                        return -errno;

                r = FUNC2(fd);
                if (r < 0)
                        return r;
        }

        return 0;
}