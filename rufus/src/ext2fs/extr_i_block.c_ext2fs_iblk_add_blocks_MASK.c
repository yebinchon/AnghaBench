#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long long l_i_blocks_hi; } ;
struct TYPE_7__ {TYPE_1__ linux2; } ;
struct ext2_inode {unsigned long long i_blocks; int i_flags; TYPE_2__ osd2; } ;
typedef  TYPE_3__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int blk64_t ;
struct TYPE_8__ {int blocksize; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOVERFLOW ; 
 int FUNC0 (TYPE_3__*) ; 
 int EXT4_HUGE_FILE_FL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

errcode_t FUNC2(ext2_filsys fs, struct ext2_inode *inode,
				 blk64_t num_blocks)
{
	unsigned long long b = inode->i_blocks;

	if (FUNC1(fs->super))
		b += ((long long) inode->osd2.linux2.l_i_blocks_hi) << 32;

	if (!FUNC1(fs->super) ||
	    !(inode->i_flags & EXT4_HUGE_FILE_FL))
	    num_blocks *= fs->blocksize / 512;
	num_blocks *= FUNC0(fs);

	b += num_blocks;

	if (FUNC1(fs->super))
		inode->osd2.linux2.l_i_blocks_hi = b >> 32;
	else if (b > 0xFFFFFFFF)
		return EOVERFLOW;
	inode->i_blocks = b & 0xFFFFFFFF;
	return 0;
}