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
struct statfs {int /*<<< orphan*/  f_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_SUPER_MAGIC ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int errno ; 
 scalar_t__ FUNC1 (char*,struct statfs*) ; 

__attribute__((used)) static int FUNC2(void) {
        struct statfs sfs;

        if (FUNC1("/var/lib/machines", &sfs) < 0) {
                if (errno != ENOENT)
                        return -errno;

                if (FUNC1("/var/lib", &sfs) < 0)
                        return -errno;
        }

        return FUNC0(sfs.f_type, BTRFS_SUPER_MAGIC);
}