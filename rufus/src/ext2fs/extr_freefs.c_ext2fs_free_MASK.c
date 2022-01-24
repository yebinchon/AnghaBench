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
struct TYPE_4__ {scalar_t__ magic; scalar_t__ image_io; scalar_t__ io; scalar_t__ block_sha_map; struct TYPE_4__* mmp_cmp; struct TYPE_4__* mmp_buf; scalar_t__ icache; scalar_t__ dblist; scalar_t__ badblocks; struct TYPE_4__* image_header; scalar_t__ inode_map; scalar_t__ block_map; struct TYPE_4__* group_desc; struct TYPE_4__* orig_super; struct TYPE_4__* super; struct TYPE_4__* device_name; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void FUNC9(ext2_filsys fs)
{
	if (!fs || (fs->magic != EXT2_ET_MAGIC_EXT2FS_FILSYS))
		return;
	if (fs->image_io != fs->io) {
		if (fs->image_io)
			FUNC8(fs->image_io);
	}
	if (fs->io) {
		FUNC8(fs->io);
	}
	if (fs->device_name)
		FUNC5(&fs->device_name);
	if (fs->super)
		FUNC5(&fs->super);
	if (fs->orig_super)
		FUNC5(&fs->orig_super);
	if (fs->group_desc)
		FUNC5(&fs->group_desc);
	if (fs->block_map)
		FUNC1(fs->block_map);
	if (fs->inode_map)
		FUNC3(fs->inode_map);
	if (fs->image_header)
		FUNC5(&fs->image_header);

	if (fs->badblocks)
		FUNC0(fs->badblocks);
	fs->badblocks = 0;

	if (fs->dblist)
		FUNC2(fs->dblist);

	if (fs->icache)
		FUNC4(fs->icache);

	if (fs->mmp_buf)
		FUNC5(&fs->mmp_buf);
	if (fs->mmp_cmp)
		FUNC5(&fs->mmp_cmp);

	if (fs->block_sha_map)
		FUNC6(fs->block_sha_map);

	fs->magic = 0;

	// coverity[check_return]
	FUNC7(NULL, 0, 0, NULL, NULL);
	FUNC5(&fs);
}