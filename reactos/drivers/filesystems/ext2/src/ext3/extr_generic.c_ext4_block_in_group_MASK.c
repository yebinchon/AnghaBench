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
struct super_block {int dummy; } ;
typedef  scalar_t__ ext4_group_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct super_block *sb, ext4_fsblk_t block,
                               ext4_group_t block_group)
{
    ext4_group_t actual_group;
    FUNC0(sb, block, &actual_group, NULL);
    if (actual_group == block_group)
        return 1;
    return 0;
}