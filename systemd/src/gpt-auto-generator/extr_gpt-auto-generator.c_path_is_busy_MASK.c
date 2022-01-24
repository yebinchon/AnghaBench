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
 int /*<<< orphan*/  AT_SYMLINK_FOLLOW ; 
 int ENOENT ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int,char*,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *where) {
        int r;

        /* already a mountpoint; generators run during reload */
        r = FUNC3(where, NULL, AT_SYMLINK_FOLLOW);
        if (r > 0)
                return false;

        /* the directory might not exist on a stateless system */
        if (r == -ENOENT)
                return false;

        if (r < 0)
                return FUNC2(r, "Cannot check if \"%s\" is a mount point: %m", where);

        /* not a mountpoint but it contains files */
        r = FUNC0(where);
        if (r < 0)
                return FUNC2(r, "Cannot check if \"%s\" is empty: %m", where);
        if (r > 0)
                return false;

        FUNC1("\"%s\" already populated, ignoring.", where);
        return true;
}