#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ext2_off64_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  TYPE_2__* ext2_file_t ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_7__ {int /*<<< orphan*/  ino; TYPE_1__* fs; } ;
struct TYPE_6__ {scalar_t__ blocksize; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int BMAP_RET_UNINIT ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 scalar_t__ FUNC2 (scalar_t__,char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static errcode_t FUNC7(ext2_file_t file,
					      ext2_off64_t offset)
{
	ext2_filsys fs = file->fs;
	char *b = NULL;
	ext2_off64_t off = offset % fs->blocksize;
	blk64_t blk;
	int ret_flags;
	errcode_t retval;

	if (off == 0)
		return 0;

	retval = FUNC6(file);
	if (retval)
		return retval;

	/* Is there an initialized block at the end? */
	retval = FUNC0(fs, file->ino, NULL, NULL, 0,
			      offset / fs->blocksize, &ret_flags, &blk);
	if (retval)
		return retval;
	if ((blk == 0) || (ret_flags & BMAP_RET_UNINIT))
		return 0;

	/* Zero to the end of the block */
	retval = FUNC2(fs->blocksize, &b);
	if (retval)
		return retval;

	/* Read/zero/write block */
	retval = FUNC3(fs->io, blk, 1, b);
	if (retval)
		goto out;

	FUNC5(b + off, 0, fs->blocksize - off);

	retval = FUNC4(fs->io, blk, 1, b);
	if (retval)
		goto out;

out:
	FUNC1(&b);
	return retval;
}