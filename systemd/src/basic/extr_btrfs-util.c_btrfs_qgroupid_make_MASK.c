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
typedef  int uint64_t ;

/* Variables and functions */
 int BTRFS_QGROUP_LEVEL_SHIFT ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 

int FUNC2(uint64_t level, uint64_t id, uint64_t *ret) {
        FUNC1(ret);

        if (level >= (FUNC0(1) << (64 - BTRFS_QGROUP_LEVEL_SHIFT)))
                return -EINVAL;

        if (id >= (FUNC0(1) << BTRFS_QGROUP_LEVEL_SHIFT))
                return -EINVAL;

        *ret = (level << BTRFS_QGROUP_LEVEL_SHIFT) | id;
        return 0;
}