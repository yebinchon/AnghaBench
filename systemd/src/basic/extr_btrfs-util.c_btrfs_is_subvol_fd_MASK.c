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
struct stat {int st_ino; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int errno ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 

int FUNC4(int fd) {
        struct stat st;

        FUNC1(fd >= 0);

        /* On btrfs subvolumes always have the inode 256 */

        if (FUNC3(fd, &st) < 0)
                return -errno;

        if (!FUNC0(st.st_mode) || st.st_ino != 256)
                return 0;

        return FUNC2(fd);
}