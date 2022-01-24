#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext2fs_struct_generic_bitmap_32 {int dummy; } ;
typedef  TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef  scalar_t__ ext2fs_generic_bitmap ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  int errcode_t ;
typedef  void* __u32 ;
struct TYPE_7__ {int magic; int start; int real_end; struct TYPE_7__* bitmap; struct TYPE_7__* description; int /*<<< orphan*/  base_error_code; void* end; int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_ET_BAD_BLOCK_MARK ; 
 int /*<<< orphan*/  EXT2_ET_BAD_GENERIC_MARK ; 
 int /*<<< orphan*/  EXT2_ET_BAD_INODE_MARK ; 
#define  EXT2_ET_MAGIC_BLOCK_BITMAP 129 
#define  EXT2_ET_MAGIC_INODE_BITMAP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int FUNC1 (size_t,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*) ; 
 int FUNC5 (char const*) ; 

errcode_t FUNC6(errcode_t magic, ext2_filsys fs,
				     __u32 start, __u32 end, __u32 real_end,
				     const char *descr, char *init_map,
				     ext2fs_generic_bitmap *ret)
{
	ext2fs_generic_bitmap_32 bitmap;
	errcode_t		retval;
	size_t			size;

	retval = FUNC1(sizeof(struct ext2fs_struct_generic_bitmap_32),
				&bitmap);
	if (retval)
		return retval;

	bitmap->magic = magic;
	bitmap->fs = fs;
	bitmap->start = start;
	bitmap->end = end;
	bitmap->real_end = real_end;
	switch (magic) {
	case EXT2_ET_MAGIC_INODE_BITMAP:
		bitmap->base_error_code = EXT2_ET_BAD_INODE_MARK;
		break;
	case EXT2_ET_MAGIC_BLOCK_BITMAP:
		bitmap->base_error_code = EXT2_ET_BAD_BLOCK_MARK;
		break;
	default:
		bitmap->base_error_code = EXT2_ET_BAD_GENERIC_MARK;
	}
	if (descr) {
		retval = FUNC1(FUNC5(descr)+1, &bitmap->description);
		if (retval) {
			FUNC0(&bitmap);
			return retval;
		}
		FUNC4(bitmap->description, descr);
	} else
		bitmap->description = 0;

	size = (size_t) (((bitmap->real_end - bitmap->start) / 8) + 1);
	/* Round up to allow for the BT x86 instruction */
	size = (size + 7) & ~3;
	retval = FUNC1(size, &bitmap->bitmap);
	if (retval) {
		FUNC0(&bitmap->description);
		FUNC0(&bitmap);
		return retval;
	}

	if (init_map)
		FUNC2(bitmap->bitmap, init_map, size);
	else
		FUNC3(bitmap->bitmap, 0, size);
	*ret = (ext2fs_generic_bitmap) bitmap;
	return 0;
}