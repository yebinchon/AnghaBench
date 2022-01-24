#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  TYPE_2__* ext2_file_t ;
typedef  scalar_t__ errcode_t ;
typedef  TYPE_3__* block_entry_t ;
struct TYPE_24__ {int i_flags; } ;
struct TYPE_23__ {int /*<<< orphan*/  sha; int /*<<< orphan*/  physblock; } ;
struct TYPE_22__ {int flags; unsigned int pos; TYPE_8__ inode; int /*<<< orphan*/  ino; int /*<<< orphan*/  physblock; int /*<<< orphan*/  blockno; scalar_t__ buf; TYPE_1__* fs; } ;
struct TYPE_21__ {unsigned int blocksize; int flags; int /*<<< orphan*/  block_sha_map; } ;

/* Variables and functions */
 int BMAP_ALLOC ; 
 int /*<<< orphan*/  BMAP_BUFFER ; 
 int BMAP_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT2_ET_FILE_RO ; 
 scalar_t__ EXT2_ET_INLINE_DATA_NO_SPACE ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2_FILE ; 
 scalar_t__ EXT2_ET_NO_MEMORY ; 
 int EXT2_FILE_BUF_DIRTY ; 
 int EXT2_FILE_WRITE ; 
 int EXT2_FLAG_SHARE_DUP ; 
 unsigned int FUNC1 (TYPE_8__*) ; 
 int EXT4_INLINE_DATA_FL ; 
 TYPE_3__* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,void const*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char const*,unsigned int) ; 
 scalar_t__ FUNC14 (TYPE_2__*) ; 

errcode_t FUNC15(ext2_file_t file, const void *buf,
			    unsigned int nbytes, unsigned int *written)
{
	ext2_filsys	fs;
	errcode_t	retval = 0;
	unsigned int	start, c, count = 0;
	const char	*ptr = (const char *) buf;
	block_entry_t	new_block = NULL, old_block = NULL;
	int		bmap_flags = 0;

	FUNC0(file, EXT2_ET_MAGIC_EXT2_FILE);
	fs = file->fs;

	if (!(file->flags & EXT2_FILE_WRITE))
		return EXT2_ET_FILE_RO;

	/* If an inode has inline data, things get complicated. */
	if (file->inode.i_flags & EXT4_INLINE_DATA_FL) {
		retval = FUNC5(file, buf, nbytes,
						       written);
		if (retval != EXT2_ET_INLINE_DATA_NO_SPACE)
			return retval;
		/* fall through to read data from the block */
		retval = 0;
	}

	while (nbytes > 0) {
		retval = FUNC14(file);
		if (retval)
			goto fail;

		start = file->pos % fs->blocksize;
		c = fs->blocksize - start;
		if (c > nbytes)
			c = nbytes;

		/*
		 * We only need to do a read-modify-update cycle if
		 * we're doing a partial write.
		 */
		retval = FUNC12(file, (c == fs->blocksize));
		if (retval)
			goto fail;

		file->flags |= EXT2_FILE_BUF_DIRTY;
		FUNC13(file->buf+start, ptr, c);

		/*
		 * OK, the physical block hasn't been allocated yet.
		 * Allocate it.
		 */
		if (!file->physblock) {
			bmap_flags = (file->ino ? BMAP_ALLOC : 0);
			if (fs->flags & EXT2_FLAG_SHARE_DUP) {
				new_block = FUNC2(1, sizeof(*new_block));
				if (!new_block) {
					retval = EXT2_ET_NO_MEMORY;
					goto fail;
				}
				FUNC9((const unsigned char*)file->buf,
						fs->blocksize, new_block->sha);
				old_block = FUNC7(
							fs->block_sha_map,
							new_block->sha,
							sizeof(new_block->sha));
			}

			if (old_block) {
				file->physblock = old_block->physblock;
				bmap_flags |= BMAP_SET;
				FUNC11(new_block);
				new_block = NULL;
			}

			retval = FUNC3(fs, file->ino, &file->inode,
					      BMAP_BUFFER,
					      bmap_flags,
					      file->blockno, 0,
					      &file->physblock);
			if (retval) {
				FUNC11(new_block);
				new_block = NULL;
				goto fail;
			}

			if (new_block) {
				new_block->physblock = file->physblock;
				FUNC6(fs->block_sha_map, new_block,
					new_block->sha, sizeof(new_block->sha));
			}

			if (bmap_flags & BMAP_SET) {
				FUNC8(fs, &file->inode, 1);
				FUNC10(fs, file->ino, &file->inode);
			}
		}

		file->pos += c;
		ptr += c;
		count += c;
		nbytes -= c;
	}

fail:
	/* Update inode size */
	if (count != 0 && FUNC1(&file->inode) < file->pos) {
		errcode_t	rc;

		rc = FUNC4(file, file->pos);
		if (retval == 0)
			retval = rc;
	}

	if (written)
		*written = count;
	return retval;
}