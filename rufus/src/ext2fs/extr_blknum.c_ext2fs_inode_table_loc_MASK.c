#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ext4_group_desc {int bg_inode_table; scalar_t__ bg_inode_table_hi; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  dgrp_t ;
typedef  int blk64_t ;
typedef  int __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  super; int /*<<< orphan*/  group_desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ext4_group_desc* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

blk64_t FUNC2(ext2_filsys fs, dgrp_t group)
{
	struct ext4_group_desc *gdp;

	gdp = FUNC1(fs, fs->group_desc, group);
	return gdp->bg_inode_table |
		(FUNC0(fs->super) ?
		 (__u64) gdp->bg_inode_table_hi << 32 : 0);
}