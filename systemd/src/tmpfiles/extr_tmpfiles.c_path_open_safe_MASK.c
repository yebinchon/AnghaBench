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
 int CHASE_NOFOLLOW ; 
 int CHASE_SAFE ; 
 int CHASE_WARN ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOLINK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg_root ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *path) {
        int r, fd;

        /* path_open_safe() returns a file descriptor opened with O_PATH after
         * verifying that the path doesn't contain unsafe transitions, except
         * for its final component as the function does not follow symlink. */

        FUNC1(path);

        if (!FUNC4(path))
                return FUNC3(FUNC0(EINVAL),
                                       "Failed to open invalid path '%s'.",
                                       path);

        r = FUNC2(path, arg_root, CHASE_SAFE|CHASE_WARN|CHASE_NOFOLLOW, NULL, &fd);
        if (r < 0 && r != -ENOLINK)
                return FUNC3(r, "Failed to validate path %s: %m", path);

        return r < 0 ? r : fd;
}