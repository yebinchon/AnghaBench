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
				    struct ext2_dir_entry *dirent, __u32 *crc,
				    int size)
{
	errcode_t retval;
	char *buf = (char *)dirent;
	__u32 gen;
	struct ext2_inode inode;

	retval = FUNC2(fs, inum, &inode);
	if (retval)
		return retval;

	inum = FUNC0(inum);
	gen = FUNC0(inode.i_generation);
	*crc = FUNC1(fs->csum_seed, (unsigned char *)&inum,
				sizeof(inum));
	*crc = FUNC1(*crc, (unsigned char *)&gen, sizeof(gen));
	*crc = FUNC1(*crc, (unsigned char *)buf, size);

	return 0;
}