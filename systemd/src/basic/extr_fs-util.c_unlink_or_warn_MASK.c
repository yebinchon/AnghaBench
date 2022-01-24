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
 scalar_t__ ENOENT ; 
 scalar_t__ EROFS ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (scalar_t__,char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(const char *filename) {
        if (FUNC2(filename) < 0 && errno != ENOENT)
                /* If the file doesn't exist and the fs simply was read-only (in which
                 * case unlink() returns EROFS even if the file doesn't exist), don't
                 * complain */
                if (errno != EROFS || FUNC0(filename, F_OK) >= 0)
                        return FUNC1(errno, "Failed to remove \"%s\": %m", filename);

        return 0;
}