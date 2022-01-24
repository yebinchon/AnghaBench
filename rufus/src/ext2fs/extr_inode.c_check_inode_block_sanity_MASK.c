#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_large {int dummy; } ;
typedef  TYPE_1__* ext2_inode_scan ;
typedef  unsigned int ext2_ino_t ;
typedef  unsigned int blk64_t ;
struct TYPE_8__ {unsigned int blocksize; int /*<<< orphan*/  super; } ;
struct TYPE_7__ {int scan_flags; unsigned int inodes_left; unsigned int inode_size; unsigned int current_inode; TYPE_2__* fs; scalar_t__ inode_buffer; int /*<<< orphan*/  inode_buffer_blocks; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EXT2_SF_WARN_GARBAGE_INODES ; 
 char IBLOCK_STATUS_CSUMS_OK ; 
 char IBLOCK_STATUS_INSANE ; 
 char* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct ext2_inode_large*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2_inode_large**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct ext2_inode_large**) ; 
 scalar_t__ FUNC6 (TYPE_2__*,unsigned int,struct ext2_inode_large*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,struct ext2_inode_large*,struct ext2_inode_large*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ext2_inode_large*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(ext2_inode_scan scan, blk64_t num_blocks)
{
	ext2_ino_t	ino, inodes_to_scan;
	unsigned int	badness, checksum_failures;
	unsigned int	inodes_in_buf, inodes_per_block;
	char		*p;
	struct ext2_inode_large *inode;
	char		*block_status;
	unsigned int	blk, bad_csum;

	if (!(scan->scan_flags & EXT2_SF_WARN_GARBAGE_INODES))
		return;

	inodes_to_scan = scan->inodes_left;
	inodes_in_buf = num_blocks * scan->fs->blocksize / scan->inode_size;
	if (inodes_to_scan > inodes_in_buf)
		inodes_to_scan = inodes_in_buf;

	p = (char *) scan->inode_buffer;
	ino = scan->current_inode + 1;
	checksum_failures = badness = 0;
	block_status = FUNC2(scan);
	FUNC9(block_status, 0, scan->inode_buffer_blocks);
	inodes_per_block = FUNC0(scan->fs->super);

	if (inodes_per_block < 2)
		return;

#ifdef WORDS_BIGENDIAN
	if (ext2fs_get_mem(EXT2_INODE_SIZE(scan->fs->super), &inode))
		return;
#endif

	while (inodes_to_scan > 0) {
		blk = (p - (char *)scan->inode_buffer) / scan->fs->blocksize;
		bad_csum = FUNC6(scan->fs, ino,
				(struct ext2_inode_large *) p) == 0;

#ifdef WORDS_BIGENDIAN
		ext2fs_swap_inode_full(scan->fs,
			       (struct ext2_inode_large *) inode,
			       (struct ext2_inode_large *) p,
			       0, EXT2_INODE_SIZE(scan->fs->super));
#else
		inode = (struct ext2_inode_large *) p;
#endif

		/* Is this inode insane? */
		if (bad_csum) {
			checksum_failures++;
			badness++;
		} else if (FUNC8(inode) ||
			   FUNC3(scan->fs, inode))
			badness++;

		/* If more than half are insane, declare the whole block bad */
		if (badness > inodes_per_block / 2) {
			unsigned int ino_adj;

			block_status[blk] |= IBLOCK_STATUS_INSANE;
			ino_adj = inodes_per_block -
						((ino - 1) % inodes_per_block);
			if (ino_adj > inodes_to_scan)
				ino_adj = inodes_to_scan;
			inodes_to_scan -= ino_adj;
			p += scan->inode_size * ino_adj;
			ino += ino_adj;
			checksum_failures = badness = 0;
			continue;
		}

		if ((ino % inodes_per_block) == 0) {
			if (checksum_failures == 0)
				block_status[blk] |= IBLOCK_STATUS_CSUMS_OK;
			checksum_failures = badness = 0;
		}
		inodes_to_scan--;
		p += scan->inode_size;
		ino++;
	};

#ifdef WORDS_BIGENDIAN
	ext2fs_free_mem(&inode);
#endif
}