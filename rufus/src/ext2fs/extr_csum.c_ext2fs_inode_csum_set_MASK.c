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
struct ext2_inode_large {scalar_t__ i_extra_isize; void* i_checksum_hi; void* i_checksum_lo; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  super; } ;

/* Variables and functions */
 scalar_t__ EXT2_GOOD_OLD_INODE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_INODE_CSUM_HI_EXTRA_END ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode_large*,int*,int) ; 

errcode_t FUNC4(ext2_filsys fs, ext2_ino_t inum,
			   struct ext2_inode_large *inode)
{
	errcode_t retval;
	__u32 crc;
	int has_hi;

	if (!FUNC2(fs->super))
		return 0;

	has_hi = (FUNC0(fs->super) > EXT2_GOOD_OLD_INODE_SIZE &&
		  inode->i_extra_isize >= EXT4_INODE_CSUM_HI_EXTRA_END);

	retval = FUNC3(fs, inum, inode, &crc, has_hi);
	if (retval)
		return retval;
	inode->i_checksum_lo = FUNC1(crc & 0xFFFF);
	if (has_hi)
		inode->i_checksum_hi = FUNC1(crc >> 16);
	return 0;
}