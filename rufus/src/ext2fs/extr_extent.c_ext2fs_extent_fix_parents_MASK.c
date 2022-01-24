#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct extent_path {int left; int entries; int /*<<< orphan*/  curr; } ;
struct ext2fs_extent {scalar_t__ e_lblk; int /*<<< orphan*/  e_len; } ;
struct ext2_extent_info {int max_depth; int curr_level; } ;
typedef  TYPE_2__* ext2_extent_handle_t ;
typedef  int errcode_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_11__ {int level; struct extent_path* path; TYPE_1__* fs; } ;
struct TYPE_10__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXTENT_HANDLE ; 
 int EXT2_ET_NO_CURRENT_NODE ; 
 int EXT2_ET_RO_FILSYS ; 
 int /*<<< orphan*/  EXT2_EXTENT_CURRENT ; 
 int /*<<< orphan*/  EXT2_EXTENT_UP ; 
 int EXT2_FLAG_RW ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,struct ext2fs_extent*) ; 
 int FUNC2 (TYPE_2__*,struct ext2_extent_info*) ; 
 int FUNC3 (TYPE_2__*,int,scalar_t__) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,struct ext2fs_extent*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

errcode_t FUNC6(ext2_extent_handle_t handle)
{
	int				retval = 0;
	int				orig_height;
	blk64_t				start;
	struct extent_path		*path;
	struct ext2fs_extent		extent;
	struct ext2_extent_info		info;

	FUNC0(handle, EXT2_ET_MAGIC_EXTENT_HANDLE);

	if (!(handle->fs->flags & EXT2_FLAG_RW))
		return EXT2_ET_RO_FILSYS;

	if (!handle->path)
		return EXT2_ET_NO_CURRENT_NODE;

	path = handle->path + handle->level;
	if (!path->curr)
		return EXT2_ET_NO_CURRENT_NODE;

	retval = FUNC1(handle, EXT2_EXTENT_CURRENT, &extent);
	if (retval)
		goto done;

	/* modified node's start block */
	start = extent.e_lblk;

	if ((retval = FUNC2(handle, &info)))
		return retval;
	orig_height = info.max_depth - info.curr_level;

	/* traverse up until index not first, or startblk matches, or top */
	while (handle->level > 0 &&
	       (path->left == path->entries - 1)) {
		retval = FUNC1(handle, EXT2_EXTENT_UP, &extent);
		if (retval)
			goto done;
		if (extent.e_lblk == start)
			break;
		path = handle->path + handle->level;
		extent.e_len += (extent.e_lblk - start);
		extent.e_lblk = start;
		retval = FUNC4(handle, 0, &extent);
		if (retval)
			goto done;
		FUNC5(handle);
	}

	/* put handle back to where we started */
	retval = FUNC3(handle, orig_height, start);
done:
	return retval;
}