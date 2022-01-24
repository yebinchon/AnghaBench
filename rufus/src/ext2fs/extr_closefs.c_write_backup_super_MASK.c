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
struct ext2_super_block {int /*<<< orphan*/  s_block_group_nr; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int dgrp_t ;
typedef  int /*<<< orphan*/  blk64_t ;
struct TYPE_4__ {int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUPERBLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct ext2_super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_super_block*) ; 

__attribute__((used)) static errcode_t FUNC3(ext2_filsys fs, dgrp_t group,
				    blk64_t group_block,
				    struct ext2_super_block *super_shadow)
{
	errcode_t retval;
	dgrp_t	sgrp = group;

	if (sgrp > ((1 << 16) - 1))
		sgrp = (1 << 16) - 1;

	super_shadow->s_block_group_nr = FUNC0(sgrp);

	retval = FUNC1(fs, super_shadow);
	if (retval)
		return retval;

	return FUNC2(fs->io, group_block, -SUPERBLOCK_SIZE,
				    super_shadow);
}