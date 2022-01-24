#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ext2fs_generic_bitmap ;
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int __u64 ;
struct TYPE_10__ {scalar_t__ s_first_data_block; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  default_bitmap_type; scalar_t__ group_desc_count; TYPE_3__* super; int /*<<< orphan*/  write_bitmaps; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  EXT2_ET_CANT_USE_LEGACY_BITMAPS ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_BLOCK_BITMAP ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_BLOCK_BITMAP64 ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int EXT2_FLAG_64BITS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int,int,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext2fs_write_bitmaps ; 

errcode_t FUNC6(ext2_filsys fs,
				       const char *descr,
				       ext2fs_block_bitmap *ret)
{
	__u64		start, end, real_end;

	FUNC1(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	fs->write_bitmaps = ext2fs_write_bitmaps;

	start = FUNC0(fs, fs->super->s_first_data_block);
	end = FUNC0(fs, FUNC4(fs->super)-1);
	real_end = ((__u64) FUNC2(fs->super)
		    * (__u64) fs->group_desc_count)-1 + start;

	if (fs->flags & EXT2_FLAG_64BITS)
		return (FUNC3(fs,
				EXT2_ET_MAGIC_BLOCK_BITMAP64,
				fs->default_bitmap_type,
				start, end, real_end, descr, ret));

	if ((end > ~0U) || (real_end > ~0U))
		return EXT2_ET_CANT_USE_LEGACY_BITMAPS;

	return (FUNC5(EXT2_ET_MAGIC_BLOCK_BITMAP, fs,
					   start, end, real_end,
					   descr, 0,
					   (ext2fs_generic_bitmap *) ret));
}