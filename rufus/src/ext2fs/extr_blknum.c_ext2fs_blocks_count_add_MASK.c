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
struct ext2_super_block {int dummy; } ;
typedef  scalar_t__ blk64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ext2_super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2_super_block*,scalar_t__) ; 

void FUNC2(struct ext2_super_block *super, blk64_t blk)
{
	blk64_t tmp;
	tmp = FUNC0(super) + blk;
	FUNC1(super, tmp);
}