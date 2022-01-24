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
 int /*<<< orphan*/  S_IFLNK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

int FUNC5(const char *old_path, const char *new_path) {
        int r;

        FUNC0(old_path);
        FUNC0(new_path);

        r = FUNC2(new_path, S_IFLNK);
        if (r < 0)
                return r;

        if (FUNC4(old_path, new_path) < 0)
                r = -errno;

        FUNC1();

        if (r < 0)
                return r;

        return FUNC3(new_path, 0);
}