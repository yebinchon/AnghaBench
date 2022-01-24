#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC2 (struct super_block*,scalar_t__,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC4 () ; 

ext4_fsblk_t FUNC5(struct super_block *sb)
{
    ext4_fsblk_t desc_count;
    struct ext4_group_desc *gdp;
    struct buffer_head *bh = NULL;
    ext4_group_t i;
    ext4_group_t ngroups = FUNC0(sb)->s_groups_count;

    desc_count = 0;
    FUNC4();
    for (i = 0; i < ngroups; i++) {
        gdp = FUNC2(sb, i, &bh);
        if (!bh)
            continue;
        desc_count += FUNC1(sb, gdp);
        FUNC3(&bh);
    }

    return desc_count;
}