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
struct ext2_super_block {int s_blocks_count; scalar_t__ s_blocks_count_hi; } ;
typedef  int blk64_t ;
typedef  int __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext2_super_block*) ; 

blk64_t FUNC1(struct ext2_super_block *super)
{
	return super->s_blocks_count |
		(FUNC0(super) ?
		(__u64) super->s_blocks_count_hi << 32 : 0);
}