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
typedef  char const dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const,char const*) ; 
 int FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*) ; 

int FUNC4(const char *path, dev_t *ret) {
        int r;

        FUNC0(path);
        FUNC0(ret);

        /* Gets the backing block device for a file system, and handles LUKS encrypted file systems, looking for its
         * immediate parent, if there is one. */

        r = FUNC2(path, ret);
        if (r <= 0)
                return r;

        r = FUNC1(*ret, ret);
        if (r < 0)
                FUNC3(r, "Failed to chase block device '%s', ignoring: %m", path);

        return 1;
}