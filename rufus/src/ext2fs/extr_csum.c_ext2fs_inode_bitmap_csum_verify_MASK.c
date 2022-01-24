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
struct ext4_group_desc {int bg_inode_bitmap_csum_lo; scalar_t__ bg_inode_bitmap_csum_hi; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  dgrp_t ;
typedef  int __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  super; int /*<<< orphan*/  csum_seed; int /*<<< orphan*/  group_desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_BG_INODE_BITMAP_CSUM_HI_END ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(ext2_filsys fs, dgrp_t group,
				    char *bitmap, int size)
{
	struct ext4_group_desc *gdp = (struct ext4_group_desc *)
			FUNC2(fs, fs->group_desc, group);
	__u32 provided, calculated;

	if (!FUNC3(fs->super))
		return 1;
	provided = gdp->bg_inode_bitmap_csum_lo;
	calculated = FUNC1(fs->csum_seed, (unsigned char *)bitmap,
				      size);
	if (FUNC0(fs->super) >= EXT4_BG_INODE_BITMAP_CSUM_HI_END)
		provided |= (__u32)gdp->bg_inode_bitmap_csum_hi << 16;
	else
		calculated &= 0xFFFF;

	return provided == calculated;
}