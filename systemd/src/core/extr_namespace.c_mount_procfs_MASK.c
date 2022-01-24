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
typedef  int /*<<< orphan*/  MountEntry ;

/* Variables and functions */
 int MS_NODEV ; 
 int MS_NOEXEC ; 
 int MS_NOSUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const MountEntry *m) {
        int r;

        FUNC0(m);

        (void) FUNC2(FUNC4(m), 0755);

        r = FUNC5(FUNC4(m), NULL, 0);
        if (r < 0)
                return FUNC1(r, "Unable to determine whether /proc is already mounted: %m");
        if (r > 0) /* make this a NOP if /proc is already a mount point */
                return 0;

        /* Mount a new instance, so that we get the one that matches our user namespace, if we are running in one */
        if (FUNC3("proc", FUNC4(m), "proc", MS_NOSUID|MS_NOEXEC|MS_NODEV, NULL) < 0)
                return FUNC1(errno, "Failed to mount %s: %m", FUNC4(m));

        return 1;
}