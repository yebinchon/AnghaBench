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
 int /*<<< orphan*/  BTRFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  PROC_SUPER_MAGIC ; 
 int /*<<< orphan*/  TMPFS_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void) {
        /* run might not be a mount point in build chroots */
        if (FUNC2("/run", NULL, AT_SYMLINK_FOLLOW) > 0) {
                FUNC0(FUNC1("/run", TMPFS_MAGIC) > 0);
                FUNC0(FUNC1("/run", BTRFS_SUPER_MAGIC) == 0);
        }
        FUNC0(FUNC1("/proc", PROC_SUPER_MAGIC) > 0);
        FUNC0(FUNC1("/proc", BTRFS_SUPER_MAGIC) == 0);
        FUNC0(FUNC1("/i-dont-exist", BTRFS_SUPER_MAGIC) == -ENOENT);
}