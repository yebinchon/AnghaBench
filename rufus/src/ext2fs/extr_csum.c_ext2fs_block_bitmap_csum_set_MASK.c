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
struct ext4_group_desc {int bg_block_bitmap_csum_lo; int bg_block_bitmap_csum_hi; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int /*<<< orphan*/  dgrp_t ;
typedef  int __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  super; int /*<<< orphan*/  csum_seed; int /*<<< orphan*/  group_desc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_BG_BLOCK_BITMAP_CSUM_HI_LOCATION ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

errcode_t FUNC4(ext2_filsys fs, dgrp_t group,
				       char *bitmap, int size)
{
	__u32 crc;
	struct ext4_group_desc *gdp = (struct ext4_group_desc *)
			FUNC2(fs, fs->group_desc, group);

	if (!FUNC3(fs->super))
		return 0;

	crc = FUNC1(fs->csum_seed, (unsigned char *)bitmap, size);
	gdp->bg_block_bitmap_csum_lo = crc & 0xFFFF;
	if (FUNC0(fs->super) >= EXT4_BG_BLOCK_BITMAP_CSUM_HI_LOCATION)
		gdp->bg_block_bitmap_csum_hi = crc >> 16;

	return 0;
}