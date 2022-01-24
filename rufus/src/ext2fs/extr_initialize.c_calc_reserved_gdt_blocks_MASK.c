#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ext2_super_block {unsigned long s_blocks_per_group; unsigned long s_first_data_block; } ;
typedef  TYPE_1__* ext2_filsys ;
struct TYPE_3__ {void* desc_blocks; struct ext2_super_block* super; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct ext2_super_block*) ; 
 unsigned int FUNC1 (struct ext2_super_block*) ; 
 int FUNC2 (struct ext2_super_block*) ; 
 void* FUNC3 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned long,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC5(ext2_filsys fs)
{
	struct ext2_super_block *sb = fs->super;
	unsigned long bpg = sb->s_blocks_per_group;
	unsigned int gdpb = FUNC1(sb);
	unsigned long max_blocks = 0xffffffff;
	unsigned long rsv_groups;
	unsigned int rsv_gdb;

	/* We set it at 1024x the current filesystem size, or
	 * the upper block count limit (2^32), whichever is lower.
	 */
	if (FUNC2(sb) < max_blocks / 1024)
		max_blocks = FUNC2(sb) * 1024;
	/*
	 * ext2fs_div64_ceil() is unnecessary because max_blocks is
	 * max _GDT_ blocks, which is limited to 32 bits.
	 */
	rsv_groups = FUNC3(max_blocks - sb->s_first_data_block, bpg);
	rsv_gdb = FUNC3(rsv_groups, gdpb) - fs->desc_blocks;
	if (rsv_gdb > FUNC0(sb))
		rsv_gdb = FUNC0(sb);
#ifdef RES_GDT_DEBUG
	printf("max_blocks %lu, rsv_groups = %lu, rsv_gdb = %u\n",
	       max_blocks, rsv_groups, rsv_gdb);
#endif

	return rsv_gdb;
}