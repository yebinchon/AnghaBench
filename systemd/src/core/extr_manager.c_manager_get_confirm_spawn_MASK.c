#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_4__ {char const* confirm_spawn; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int errno ; 
 int FUNC2 (int,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 

const char *FUNC5(Manager *m) {
        static int last_errno = 0;
        struct stat st;
        int r;

        FUNC1(m);

        /* Here's the deal: we want to test the validity of the console but don't want
         * PID1 to go through the whole console process which might block. But we also
         * want to warn the user only once if something is wrong with the console so we
         * cannot do the sanity checks after spawning our children. So here we simply do
         * really basic tests to hopefully trap common errors.
         *
         * If the console suddenly disappear at the time our children will really it
         * then they will simply fail to acquire it and a positive answer will be
         * assumed. New children will fallback to /dev/console though.
         *
         * Note: TTYs are devices that can come and go any time, and frequently aren't
         * available yet during early boot (consider a USB rs232 dongle...). If for any
         * reason the configured console is not ready, we fallback to the default
         * console. */

        if (!m->confirm_spawn || FUNC3(m->confirm_spawn, "/dev/console"))
                return m->confirm_spawn;

        if (FUNC4(m->confirm_spawn, &st) < 0) {
                r = -errno;
                goto fail;
        }

        if (!FUNC0(st.st_mode)) {
                r = -ENOTTY;
                goto fail;
        }

        last_errno = 0;
        return m->confirm_spawn;

fail:
        if (last_errno != r)
                last_errno = FUNC2(r, "Failed to open %s, using default console: %m", m->confirm_spawn);

        return "/dev/console";
}