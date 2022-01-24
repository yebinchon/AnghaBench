#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
typedef  unsigned int ext2_ino_t ;
typedef  TYPE_2__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ dgrp_t ;
typedef  unsigned int blk64_t ;
struct TYPE_21__ {unsigned int blocksize; char* block_map; char* inode_map; int flags; scalar_t__ group_desc_count; int /*<<< orphan*/  io; int /*<<< orphan*/  image_io; TYPE_14__* super; TYPE_1__* image_header; int /*<<< orphan*/  device_name; int /*<<< orphan*/  write_bitmaps; } ;
struct TYPE_20__ {int /*<<< orphan*/  offset_blockmap; int /*<<< orphan*/  offset_inodemap; } ;
struct TYPE_19__ {unsigned int s_inodes_count; int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  EXT2_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_14__*) ; 
 scalar_t__ EXT2_ET_BLOCK_BITMAP_CSUM_INVALID ; 
 scalar_t__ EXT2_ET_BLOCK_BITMAP_READ ; 
 scalar_t__ EXT2_ET_CORRUPT_SUPERBLOCK ; 
 scalar_t__ EXT2_ET_INODE_BITMAP_CSUM_INVALID ; 
 scalar_t__ EXT2_ET_INODE_BITMAP_READ ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int EXT2_FLAG_IGNORE_CSUM_ERRORS ; 
 int EXT2_FLAG_IMAGE_FILE ; 
 unsigned int FUNC3 (TYPE_14__*,scalar_t__) ; 
 int FUNC4 (TYPE_14__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,char*,char**) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char*,char**) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,char*,int) ; 
 unsigned int FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 
 scalar_t__ FUNC13 (scalar_t__,char**) ; 
 scalar_t__ FUNC14 (TYPE_2__*,scalar_t__) ; 
 int FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__,char*,int) ; 
 unsigned int FUNC17 (TYPE_2__*,scalar_t__) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char*,unsigned int,unsigned int,char*) ; 
 scalar_t__ FUNC20 (char*,unsigned int,unsigned int,char*) ; 
 int /*<<< orphan*/  ext2fs_write_bitmaps ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,unsigned int,int,char*) ; 
 scalar_t__ FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errcode_t FUNC28(ext2_filsys fs, int do_inode, int do_block)
{
	dgrp_t i;
	char *block_bitmap = 0, *inode_bitmap = 0;
	char *buf;
	errcode_t retval;
	int block_nbytes = FUNC2(fs->super) / 8;
	int inode_nbytes = FUNC4(fs->super) / 8;
	int csum_flag;
	unsigned int	cnt;
	blk64_t	blk;
	blk64_t	blk_itr = FUNC0(fs, fs->super->s_first_data_block);
	blk64_t   blk_cnt;
	ext2_ino_t ino_itr = 1;
	ext2_ino_t ino_cnt;

	FUNC1(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	if ((block_nbytes > (int) fs->blocksize) ||
	    (inode_nbytes > (int) fs->blocksize))
		return EXT2_ET_CORRUPT_SUPERBLOCK;

	fs->write_bitmaps = ext2fs_write_bitmaps;

	csum_flag = FUNC15(fs);

	retval = FUNC13(FUNC27(fs->device_name) + 80, &buf);
	if (retval)
		return retval;
	if (do_block) {
		if (fs->block_map)
			FUNC10(fs->block_map);
		FUNC26(buf, "block bitmap for ");
		FUNC25(buf, fs->device_name);
		retval = FUNC5(fs, buf, &fs->block_map);
		if (retval)
			goto cleanup;
		retval = FUNC21(fs->io, 0, &block_bitmap);
		if (retval)
			goto cleanup;
	} else
		block_nbytes = 0;
	if (do_inode) {
		if (fs->inode_map)
			FUNC11(fs->inode_map);
		FUNC26(buf, "inode bitmap for ");
		FUNC25(buf, fs->device_name);
		retval = FUNC6(fs, buf, &fs->inode_map);
		if (retval)
			goto cleanup;
		retval = FUNC21(fs->io, 0, &inode_bitmap);
		if (retval)
			goto cleanup;
	} else
		inode_nbytes = 0;
	FUNC12(&buf);

	if (fs->flags & EXT2_FLAG_IMAGE_FILE) {
		blk = (FUNC18(fs->image_header->offset_inodemap) / fs->blocksize);
		ino_cnt = fs->super->s_inodes_count;
		while (inode_bitmap && ino_cnt > 0) {
			retval = FUNC22(fs->image_io, blk++,
						     1, inode_bitmap);
			if (retval)
				goto cleanup;
			cnt = fs->blocksize << 3;
			if (cnt > ino_cnt)
				cnt = ino_cnt;
			retval = FUNC20(fs->inode_map,
					       ino_itr, cnt, inode_bitmap);
			if (retval)
				goto cleanup;
			ino_itr += cnt;
			ino_cnt -= cnt;
		}
		blk = (FUNC18(fs->image_header->offset_blockmap) /
		       fs->blocksize);
		blk_cnt = FUNC3(fs->super,
						  fs->group_desc_count);
		while (block_bitmap && blk_cnt > 0) {
			retval = FUNC22(fs->image_io, blk++,
						     1, block_bitmap);
			if (retval)
				goto cleanup;
			cnt = fs->blocksize << 3;
			if (cnt > blk_cnt)
				cnt = blk_cnt;
			retval = FUNC19(fs->block_map,
				       blk_itr, cnt, block_bitmap);
			if (retval)
				goto cleanup;
			blk_itr += cnt;
			blk_cnt -= cnt;
		}
		goto success_cleanup;
	}

	for (i = 0; i < fs->group_desc_count; i++) {
		if (block_bitmap) {
			blk = FUNC9(fs, i);
			if (csum_flag &&
			    FUNC7(fs, i, EXT2_BG_BLOCK_UNINIT) &&
			    FUNC14(fs, i))
				blk = 0;
			if (blk) {
				retval = FUNC22(fs->io, blk,
							       1, block_bitmap);
				if (retval) {
					retval = EXT2_ET_BLOCK_BITMAP_READ;
					goto cleanup;
				}
				/* verify block bitmap checksum */
				if (!(fs->flags &
				      EXT2_FLAG_IGNORE_CSUM_ERRORS) &&
				    !FUNC8(fs, i,
						block_bitmap, block_nbytes)) {
					retval =
					EXT2_ET_BLOCK_BITMAP_CSUM_INVALID;
					goto cleanup;
				}
			} else
				FUNC24(block_bitmap, 0, block_nbytes);
			cnt = block_nbytes << 3;
			retval = FUNC19(fs->block_map,
					       blk_itr, cnt, block_bitmap);
			if (retval)
				goto cleanup;
			blk_itr += block_nbytes << 3;
		}
		if (inode_bitmap) {
			blk = FUNC17(fs, i);
			if (csum_flag &&
			    FUNC7(fs, i, EXT2_BG_INODE_UNINIT) &&
			    FUNC14(fs, i))
				blk = 0;
			if (blk) {
				retval = FUNC22(fs->io, blk,
							       1, inode_bitmap);
				if (retval) {
					retval = EXT2_ET_INODE_BITMAP_READ;
					goto cleanup;
				}

				/* verify inode bitmap checksum */
				if (!(fs->flags &
				      EXT2_FLAG_IGNORE_CSUM_ERRORS) &&
				    !FUNC16(fs, i,
						inode_bitmap, inode_nbytes)) {
					retval =
					EXT2_ET_INODE_BITMAP_CSUM_INVALID;
					goto cleanup;
				}
			} else
				FUNC24(inode_bitmap, 0, inode_nbytes);
			cnt = inode_nbytes << 3;
			retval = FUNC20(fs->inode_map,
					       ino_itr, cnt, inode_bitmap);
			if (retval)
				goto cleanup;
			ino_itr += inode_nbytes << 3;
		}
	}

	/* Mark group blocks for any BLOCK_UNINIT groups */
	if (do_block) {
		retval = FUNC23(fs);
		if (retval)
			goto cleanup;
	}

success_cleanup:
	if (inode_bitmap)
		FUNC12(&inode_bitmap);
	if (block_bitmap)
		FUNC12(&block_bitmap);
	return 0;

cleanup:
	if (do_block) {
		FUNC12(&fs->block_map);
		fs->block_map = 0;
	}
	if (do_inode) {
		FUNC12(&fs->inode_map);
		fs->inode_map = 0;
	}
	if (inode_bitmap)
		FUNC12(&inode_bitmap);
	if (block_bitmap)
		FUNC12(&block_bitmap);
	if (buf)
		FUNC12(&buf);
	return retval;
}