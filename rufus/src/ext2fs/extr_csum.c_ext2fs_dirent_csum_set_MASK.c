#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ext2_dir_entry_tail {int /*<<< orphan*/  det_checksum; } ;
struct ext2_dir_entry {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct ext2_dir_entry*,struct ext2_dir_entry_tail**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_dir_entry*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static errcode_t FUNC3(ext2_filsys fs, ext2_ino_t inum,
					struct ext2_dir_entry *dirent)
{
	errcode_t retval;
	__u32 crc;
	struct ext2_dir_entry_tail *t;

	retval = FUNC0(fs, dirent, &t, 1);
	if (retval)
		return retval;

	/* swapfs.c functions don't change the checksum endianness */
	retval = FUNC2(fs, inum, dirent, &crc,
				    (char *)t - (char *)dirent);
	if (retval)
		return retval;
	t->det_checksum = FUNC1(crc);
	return 0;
}