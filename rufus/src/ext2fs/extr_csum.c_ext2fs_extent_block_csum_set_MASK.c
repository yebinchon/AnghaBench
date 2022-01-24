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
struct ext3_extent_tail {int /*<<< orphan*/  et_checksum; } ;
struct ext3_extent_header {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ext3_extent_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ext3_extent_tail* FUNC3 (struct ext3_extent_header*) ; 

errcode_t FUNC4(ext2_filsys fs, ext2_ino_t inum,
				       struct ext3_extent_header *eh)
{
	errcode_t retval;
	__u32 crc;
	struct ext3_extent_tail *t = FUNC3(eh);

	if (!FUNC2(fs->super))
		return 0;

	/*
	 * The extent tree structures are accessed in LE order, so we must
	 * swap the checksum bytes here.
	 */
	retval = FUNC1(fs, inum, eh, &crc);
	if (retval)
		return retval;
	t->et_checksum = FUNC0(crc);
	return retval;
}