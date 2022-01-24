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
struct stat {int st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOTDIR ; 
 int /*<<< orphan*/  ENOTTY ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (int,char*) ; 

int FUNC6(int fd) {
        int r;

        FUNC1(fd >= 0);

        /* First, let's make this a read-only subvolume if it refers
         * to a subvolume */
        r = FUNC2(fd, true);
        if (FUNC0(r, -ENOTTY, -ENOTDIR, -EINVAL)) {
                struct stat st;

                /* This doesn't refer to a subvolume, or the file
                 * system isn't even btrfs. In that, case fall back to
                 * chmod()ing */

                r = FUNC4(fd, &st);
                if (r < 0)
                        return FUNC5(errno, "Failed to stat temporary image: %m");

                /* Drop "w" flag */
                if (FUNC3(fd, st.st_mode & 07555) < 0)
                        return FUNC5(errno, "Failed to chmod() final image: %m");

                return 0;

        } else if (r < 0)
                return FUNC5(r, "Failed to make subvolume read-only: %m");

        return 0;
}