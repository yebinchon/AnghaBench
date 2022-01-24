#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* io_stats ;
typedef  TYPE_4__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
struct TYPE_17__ {TYPE_1__* manager; } ;
struct TYPE_16__ {int flags; int desc_blocks; int blocksize; TYPE_2__* super; TYPE_5__* io; scalar_t__ (* write_bitmaps ) (TYPE_4__*) ;} ;
struct TYPE_15__ {int bytes_written; } ;
struct TYPE_14__ {scalar_t__ s_kbytes_written; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* get_stats ) (TYPE_5__*,TYPE_3__**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int EXT2_FLAG_DIRTY ; 
 int EXT2_FLAG_RW ; 
 int EXT2_FLAG_SUPER_ONLY ; 
 scalar_t__ FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_3__**) ; 

errcode_t FUNC6(ext2_filsys fs, int flags)
{
	errcode_t	retval;
	int		meta_blks;
	io_stats stats = 0;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	if (fs->write_bitmaps) {
		retval = fs->write_bitmaps(fs);
		if (retval)
			return retval;
	}
	if (fs->super->s_kbytes_written &&
	    fs->io->manager->get_stats)
		fs->io->manager->get_stats(fs->io, &stats);
	if (stats && stats->bytes_written && (fs->flags & EXT2_FLAG_RW)) {
		fs->super->s_kbytes_written += stats->bytes_written >> 10;
		meta_blks = fs->desc_blocks + 1;
		if (!(fs->flags & EXT2_FLAG_SUPER_ONLY))
			fs->super->s_kbytes_written += meta_blks /
				(fs->blocksize / 1024);
		if ((fs->flags & EXT2_FLAG_DIRTY) == 0)
			fs->flags |= EXT2_FLAG_SUPER_ONLY | EXT2_FLAG_DIRTY;
	}
	if (fs->flags & EXT2_FLAG_DIRTY) {
		retval = FUNC1(fs, flags);
		if (retval)
			return retval;
	}

	retval = FUNC3(fs);
	if (retval)
		return retval;

	FUNC2(fs);
	return 0;
}