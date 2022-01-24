#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int ext2_off64_t ;
typedef  TYPE_1__* ext2_file_t ;
typedef  scalar_t__ errcode_t ;
typedef  int blk64_t ;
struct TYPE_10__ {int blocksize; int /*<<< orphan*/  super; } ;
struct TYPE_9__ {int /*<<< orphan*/  inode; scalar_t__ ino; TYPE_2__* fs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT2_ET_FILE_TOO_BIG ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2_FILE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long long) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 

errcode_t FUNC8(ext2_file_t file, ext2_off64_t size)
{
	ext2_off64_t	old_size;
	errcode_t	retval;
	blk64_t		old_truncate, truncate_block;

	FUNC1(file, EXT2_ET_MAGIC_EXT2_FILE);

	if (size && FUNC3(file->fs, &file->inode,
					(size - 1) / file->fs->blocksize))
		return EXT2_ET_FILE_TOO_BIG;
	truncate_block = ((size + file->fs->blocksize - 1) >>
			  FUNC0(file->fs->super));
	old_size = FUNC2(&file->inode);
	old_truncate = ((old_size + file->fs->blocksize - 1) >>
		      FUNC0(file->fs->super));

	retval = FUNC5(file->fs, &file->inode, size);
	if (retval)
		return retval;

	if (file->ino) {
		retval = FUNC7(file->fs, file->ino, &file->inode);
		if (retval)
			return retval;
	}

	retval = FUNC4(file, size);
	if (retval)
		return retval;

	if (truncate_block >= old_truncate)
		return 0;

	return FUNC6(file->fs, file->ino, &file->inode, 0,
			    truncate_block, ~0ULL);
}