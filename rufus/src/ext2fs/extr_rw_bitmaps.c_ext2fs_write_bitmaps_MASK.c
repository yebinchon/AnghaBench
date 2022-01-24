#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
struct TYPE_6__ {scalar_t__ block_map; scalar_t__ inode_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 

errcode_t FUNC3(ext2_filsys fs)
{
	int do_inode = fs->inode_map && FUNC1(fs);
	int do_block = fs->block_map && FUNC0(fs);

	if (!do_inode && !do_block)
		return 0;

	return FUNC2(fs, do_inode, do_block);
}