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
struct ext2_inode {void* i_generation; } ;
struct ext2_dx_tail {void* dt_checksum; } ;
struct ext2_dx_entry {int dummy; } ;
struct ext2_dir_entry {int dummy; } ;
typedef  int /*<<< orphan*/  inum ;
typedef  int /*<<< orphan*/  gen ;
typedef  void* ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  void* __u32 ;
struct TYPE_4__ {void* csum_seed; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*,unsigned char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,void*,struct ext2_inode*) ; 

__attribute__((used)) static errcode_t FUNC3(ext2_filsys fs, ext2_ino_t inum,
				struct ext2_dir_entry *dirent,
				__u32 *crc, int count_offset, int count,
				struct ext2_dx_tail *t)
{
	errcode_t retval;
	char *buf = (char *)dirent;
	int size;
	__u32 old_csum, gen;
	struct ext2_inode inode;

	size = count_offset + (count * sizeof(struct ext2_dx_entry));
	old_csum = t->dt_checksum;
	t->dt_checksum = 0;

	retval = FUNC2(fs, inum, &inode);
	if (retval)
		return retval;

	inum = FUNC0(inum);
	gen = FUNC0(inode.i_generation);
	*crc = FUNC1(fs->csum_seed, (unsigned char *)&inum,
				sizeof(inum));
	*crc = FUNC1(*crc, (unsigned char *)&gen, sizeof(gen));
	*crc = FUNC1(*crc, (unsigned char *)buf, size);
	*crc = FUNC1(*crc, (unsigned char *)t,
				sizeof(struct ext2_dx_tail));
	t->dt_checksum = old_csum;

	return 0;
}