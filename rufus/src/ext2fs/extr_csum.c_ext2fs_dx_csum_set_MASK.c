#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ext2_dx_tail {int /*<<< orphan*/  dt_checksum; } ;
struct ext2_dx_entry {int dummy; } ;
struct ext2_dx_countlimit {int /*<<< orphan*/  count; int /*<<< orphan*/  limit; } ;
struct ext2_dir_entry {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_5__ {int blocksize; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_DIR_NO_SPACE_FOR_CSUM ; 
 scalar_t__ FUNC0 (TYPE_1__*,struct ext2_dir_entry*,struct ext2_dx_countlimit**,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_dir_entry*,int /*<<< orphan*/ *,int,int,struct ext2_dx_tail*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errcode_t FUNC4(ext2_filsys fs, ext2_ino_t inum,
				    struct ext2_dir_entry *dirent)
{
	__u32 crc;
	errcode_t retval = 0;
	struct ext2_dx_countlimit *c;
	struct ext2_dx_tail *t;
	int count_offset, limit, count;

	retval = FUNC0(fs, dirent, &c, &count_offset, 1);
	if (retval)
		return retval;
	limit = FUNC3(c->limit);
	count = FUNC3(c->count);
	if (count_offset + (limit * sizeof(struct ext2_dx_entry)) >
	    fs->blocksize - sizeof(struct ext2_dx_tail))
		return EXT2_ET_DIR_NO_SPACE_FOR_CSUM;
	t = (struct ext2_dx_tail *)(((struct ext2_dx_entry *)c) + limit);

	/* htree structs are accessed in LE order */
	retval = FUNC2(fs, inum, dirent, &crc, count_offset, count, t);
	if (retval)
		return retval;
	t->dt_checksum = FUNC1(crc);
	return retval;
}