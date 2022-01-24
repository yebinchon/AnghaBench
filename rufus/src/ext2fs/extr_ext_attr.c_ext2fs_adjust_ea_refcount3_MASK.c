#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext2_ext_attr_header {int h_refcount; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ blk64_t ;
typedef  int __u32 ;
struct TYPE_7__ {scalar_t__ s_first_data_block; } ;
struct TYPE_6__ {int /*<<< orphan*/  blocksize; TYPE_4__* super; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_BAD_EA_BLOCK_NUM ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,char*,int /*<<< orphan*/ ) ; 

errcode_t FUNC5(ext2_filsys fs, blk64_t blk,
				    char *block_buf, int adjust,
				    __u32 *newcount, ext2_ino_t inum)
{
	errcode_t	retval;
	struct ext2_ext_attr_header *header;
	char	*buf = 0;

	if ((blk >= FUNC0(fs->super)) ||
	    (blk < fs->super->s_first_data_block))
		return EXT2_ET_BAD_EA_BLOCK_NUM;

	if (!block_buf) {
		retval = FUNC2(fs->blocksize, &buf);
		if (retval)
			return retval;
		block_buf = buf;
	}

	retval = FUNC3(fs, blk, block_buf, inum);
	if (retval)
		goto errout;

	header = (struct ext2_ext_attr_header *) block_buf;
	header->h_refcount += adjust;
	if (newcount)
		*newcount = header->h_refcount;

	retval = FUNC4(fs, blk, block_buf, inum);
	if (retval)
		goto errout;

errout:
	if (buf)
		FUNC1(&buf);
	return retval;
}