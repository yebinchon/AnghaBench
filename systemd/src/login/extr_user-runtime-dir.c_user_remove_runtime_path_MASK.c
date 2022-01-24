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
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MNT_DETACH ; 
 int /*<<< orphan*/  REMOVE_ROOT ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int FUNC3 (int,char*,char const*) ; 
 char const* FUNC4 (char const*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(const char *runtime_path) {
        int r;

        FUNC1(runtime_path);
        FUNC1(FUNC4(runtime_path));

        r = FUNC5(runtime_path, 0);
        if (r < 0)
                FUNC2(r, "Failed to remove runtime directory %s (before unmounting), ignoring: %m", runtime_path);

        /* Ignore cases where the directory isn't mounted, as that's quite possible, if we lacked the permissions to
         * mount something */
        r = FUNC6(runtime_path, MNT_DETACH);
        if (r < 0 && !FUNC0(errno, EINVAL, ENOENT))
                FUNC2(errno, "Failed to unmount user runtime directory %s, ignoring: %m", runtime_path);

        r = FUNC5(runtime_path, REMOVE_ROOT);
        if (r < 0 && r != -ENOENT)
                return FUNC3(r, "Failed to remove runtime directory %s (after unmounting): %m", runtime_path);

        return 0;
}