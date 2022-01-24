#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_11__ ;

/* Type definitions */
typedef  char ext2_inode_large ;
typedef  char ext2_inode ;
typedef  int ext2_ino_t ;
typedef  TYPE_3__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int dgrp_t ;
typedef  int blk64_t ;
struct TYPE_20__ {scalar_t__ (* write_inode ) (TYPE_3__*,int,char*) ;int flags; int inode_blocks_per_group; unsigned long blocksize; TYPE_2__* icache; int /*<<< orphan*/  io; TYPE_11__* super; } ;
struct TYPE_19__ {unsigned int cache_size; int buffer_blk; scalar_t__ buffer; TYPE_1__* cache; } ;
struct TYPE_18__ {int ino; char* inode; } ;
struct TYPE_17__ {int s_inodes_count; int s_first_data_block; } ;

/* Variables and functions */
 int FUNC0 (TYPE_11__*) ; 
 unsigned long FUNC1 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT2_ET_BAD_INODE_NUM ; 
 scalar_t__ EXT2_ET_CALLBACK_NOTHANDLED ; 
 scalar_t__ EXT2_ET_GDESC_BAD_INODE_TABLE ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 scalar_t__ EXT2_ET_MISSING_INODE_TABLE ; 
 scalar_t__ EXT2_ET_RO_FILSYS ; 
 int EXT2_FLAG_CHANGED ; 
 int EXT2_FLAG_RW ; 
 int FUNC3 (TYPE_11__*) ; 
 int FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  READ_INODE_NOCSUM ; 
 int WRITE_INODE_NOCSUM ; 
 int FUNC5 (TYPE_11__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 scalar_t__ FUNC8 (int,char**) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int,char*) ; 
 int FUNC10 (TYPE_3__*,unsigned int) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,char*,int,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int,char*) ; 

errcode_t FUNC17(ext2_filsys fs, ext2_ino_t ino,
			      struct ext2_inode * inode, int bufsize,
			      int flags)
{
	blk64_t block_nr;
	dgrp_t group;
	unsigned long block, offset;
	errcode_t retval = 0;
	struct ext2_inode_large *w_inode;
	char *ptr;
	unsigned i;
	int clen;
	int length = FUNC4(fs->super);

	FUNC2(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	/* Check to see if user provided an override function */
	if (fs->write_inode) {
		retval = (fs->write_inode)(fs, ino, inode);
		if (retval != EXT2_ET_CALLBACK_NOTHANDLED)
			return retval;
	}

	if ((ino == 0) || (ino > fs->super->s_inodes_count))
		return EXT2_ET_BAD_INODE_NUM;

	/* Prepare our shadow buffer for read/modify/byteswap/write */
	retval = FUNC8(length, &w_inode);
	if (retval)
		return retval;

	if (bufsize < length) {
		retval = FUNC11(fs, ino,
					    (struct ext2_inode *)w_inode,
					    length, READ_INODE_NOCSUM);
		if (retval)
			goto errout;
	}

	/* Check to see if the inode cache needs to be updated */
	if (fs->icache) {
		for (i=0; i < fs->icache->cache_size; i++) {
			if (fs->icache->cache[i].ino == ino) {
				FUNC15(fs->icache->cache[i].inode, inode,
				       (bufsize > length) ? length : bufsize);
				break;
			}
		}
	} else {
		retval = FUNC6(fs, 4);
		if (retval)
			goto errout;
	}
	FUNC15(w_inode, inode, (bufsize > length) ? length : bufsize);

	if (!(fs->flags & EXT2_FLAG_RW)) {
		retval = EXT2_ET_RO_FILSYS;
		goto errout;
	}

#ifdef WORDS_BIGENDIAN
	ext2fs_swap_inode_full(fs, w_inode, w_inode, 1, length);
#endif

	if ((flags & WRITE_INODE_NOCSUM) == 0) {
		retval = FUNC9(fs, ino, w_inode);
		if (retval)
			goto errout;
	}

	group = (ino - 1) / FUNC3(fs->super);
	offset = ((ino - 1) % FUNC3(fs->super)) *
		FUNC4(fs->super);
	block = offset >> FUNC1(fs->super);
	block_nr = FUNC10(fs, (unsigned) group);
	if (!block_nr) {
		retval = EXT2_ET_MISSING_INODE_TABLE;
		goto errout;
	}
	if ((block_nr < fs->super->s_first_data_block) ||
	    (block_nr + fs->inode_blocks_per_group - 1 >=
	     FUNC5(fs->super))) {
		retval = EXT2_ET_GDESC_BAD_INODE_TABLE;
		goto errout;
	}
	block_nr += block;

	offset &= (FUNC0(fs->super) - 1);

	ptr = (char *) w_inode;

	while (length) {
		clen = length;
		if ((offset + length) > fs->blocksize)
			clen = fs->blocksize - offset;

		if (fs->icache->buffer_blk != block_nr) {
			retval = FUNC13(fs->io, block_nr, 1,
						     fs->icache->buffer);
			if (retval)
				goto errout;
			fs->icache->buffer_blk = block_nr;
		}


		FUNC15((char *) fs->icache->buffer + (unsigned) offset,
		       ptr, clen);

		retval = FUNC14(fs->io, block_nr, 1,
					      fs->icache->buffer);
		if (retval)
			goto errout;

		offset = 0;
		ptr += clen;
		length -= clen;
		block_nr++;
	}

	fs->flags |= EXT2_FLAG_CHANGED;
errout:
	FUNC7(&w_inode);
	return retval;
}