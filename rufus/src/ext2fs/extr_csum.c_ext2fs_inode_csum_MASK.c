#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_large {void* i_checksum_hi; void* i_checksum_lo; int /*<<< orphan*/  i_generation; } ;
typedef  int /*<<< orphan*/  inum ;
typedef  int /*<<< orphan*/  gen ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  void* __u16 ;
struct TYPE_3__ {int /*<<< orphan*/  csum_seed; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 

__attribute__((used)) static errcode_t FUNC3(ext2_filsys fs, ext2_ino_t inum,
			       struct ext2_inode_large *inode,
			       __u32 *crc, int has_hi)
{
	__u32 gen;
	struct ext2_inode_large *desc = inode;
	size_t size = FUNC0(fs->super);
	__u16 old_lo;
	__u16 old_hi = 0;

	old_lo = inode->i_checksum_lo;
	inode->i_checksum_lo = 0;
	if (has_hi) {
		old_hi = inode->i_checksum_hi;
		inode->i_checksum_hi = 0;
	}

	inum = FUNC1(inum);
	gen = inode->i_generation;
	*crc = FUNC2(fs->csum_seed, (unsigned char *)&inum,
				sizeof(inum));
	*crc = FUNC2(*crc, (unsigned char *)&gen, sizeof(gen));
	*crc = FUNC2(*crc, (unsigned char *)desc, size);

	inode->i_checksum_lo = old_lo;
	if (has_hi)
		inode->i_checksum_hi = old_hi;
	return 0;
}