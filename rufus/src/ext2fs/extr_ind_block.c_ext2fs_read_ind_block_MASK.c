#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk_t ;
struct TYPE_3__ {int blocksize; int flags; scalar_t__ io; scalar_t__ image_io; } ;

/* Variables and functions */
 int EXT2_FLAG_IMAGE_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

errcode_t FUNC3(ext2_filsys fs, blk_t blk, void *buf)
{
	errcode_t	retval;
#ifdef WORDS_BIGENDIAN
	blk_t		*block_nr;
	int		i;
	int		limit = fs->blocksize >> 2;
#endif

	if ((fs->flags & EXT2_FLAG_IMAGE_FILE) &&
	    (fs->io != fs->image_io))
		FUNC2(buf, 0, fs->blocksize);
	else {
		retval = FUNC1(fs->io, blk, 1, buf);
		if (retval)
			return retval;
	}
#ifdef WORDS_BIGENDIAN
	block_nr = (blk_t *) buf;
	for (i = 0; i < limit; i++, block_nr++)
		*block_nr = ext2fs_swab32(*block_nr);
#endif
	return 0;
}