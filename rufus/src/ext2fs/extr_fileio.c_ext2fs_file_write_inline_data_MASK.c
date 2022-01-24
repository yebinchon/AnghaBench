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
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  TYPE_1__* ext2_file_t ;
typedef  scalar_t__ errcode_t ;
struct TYPE_4__ {size_t pos; int /*<<< orphan*/  inode; int /*<<< orphan*/  ino; int /*<<< orphan*/  buf; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_INLINE_DATA_NO_SPACE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void const*,unsigned int) ; 

__attribute__((used)) static errcode_t
FUNC7(ext2_file_t file, const void *buf,
			      unsigned int nbytes, unsigned int *written)
{
	ext2_filsys fs;
	errcode_t retval;
	unsigned int count = 0;
	size_t size;

	fs = file->fs;
	retval = FUNC3(fs, file->ino, &file->inode,
					file->buf, &size);
	if (retval)
		return retval;

	if (file->pos < size) {
		count = nbytes - file->pos;
		FUNC6(file->buf + file->pos, buf, count);

		retval = FUNC4(fs, file->ino, &file->inode,
						file->buf, count);
		if (retval == EXT2_ET_INLINE_DATA_NO_SPACE)
			goto expand;
		if (retval)
			return retval;

		file->pos += count;

		/* Update inode size */
		if (count != 0 && FUNC0(&file->inode) < file->pos) {
			errcode_t	rc;

			rc = FUNC1(file, file->pos);
			if (retval == 0)
				retval = rc;
		}

		if (written)
			*written = count;
		return 0;
	}

expand:
	retval = FUNC2(fs, file->ino);
	if (retval)
		return retval;
	/*
	 * reload inode and return no space error
	 *
	 * XXX: file->inode could be copied from the outside
	 * in ext2fs_file_open2().  We have no way to modify
	 * the outside inode.
	 */
	retval = FUNC5(fs, file->ino, &file->inode);
	if (retval)
		return retval;
	return EXT2_ET_INLINE_DATA_NO_SPACE;
}