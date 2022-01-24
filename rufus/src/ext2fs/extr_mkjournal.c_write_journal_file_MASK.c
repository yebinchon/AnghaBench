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
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int blk_t ;
struct TYPE_4__ {scalar_t__ blocksize; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_SHORT_WRITE ; 
 int EXT2_MKJOURNAL_LAZYINIT ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static errcode_t FUNC6(ext2_filsys fs, char *filename,
				    blk_t num_blocks, int flags)
{
	errcode_t	retval;
	char		*buf = 0;
	int		fd, ret_size;
	blk_t		i;

	if ((retval = FUNC1(fs, num_blocks, flags,
						       &buf)))
		return retval;

	/* Open the device or journal file */
	if ((fd = FUNC4(filename, O_WRONLY)) < 0) {
		retval = errno;
		goto errfree;
	}

	/* Write the superblock out */
	retval = EXT2_ET_SHORT_WRITE;
	ret_size = FUNC5(fd, buf, fs->blocksize);
	if (ret_size < 0) {
		retval = errno;
		goto errout;
	}
	if (ret_size != (int) fs->blocksize)
		goto errout;
	FUNC3(buf, 0, fs->blocksize);

	if (flags & EXT2_MKJOURNAL_LAZYINIT)
		goto success;

	for (i = 1; i < num_blocks; i++) {
		ret_size = FUNC5(fd, buf, fs->blocksize);
		if (ret_size < 0) {
			retval = errno;
			goto errout;
		}
		if (ret_size != (int) fs->blocksize)
			goto errout;
	}

success:
	retval = 0;
errout:
	FUNC0(fd);
errfree:
	FUNC2(&buf);
	return retval;
}