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
struct ext2_super_block {void* s_checksum; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  void* __u32 ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int EXT2_FLAG_SWAP_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 void* EXT4_FEATURE_RO_COMPAT_METADATA_CSUM ; 
 void* FUNC1 (void*) ; 
 void* FUNC2 (TYPE_1__*,struct ext2_super_block*) ; 

errcode_t FUNC3(ext2_filsys fs,
				     struct ext2_super_block *sb)
{
	__u32 flag, crc;

	if (fs->flags & EXT2_FLAG_SWAP_BYTES)
		flag = EXT4_FEATURE_RO_COMPAT_METADATA_CSUM;
	else
		flag = FUNC1(EXT4_FEATURE_RO_COMPAT_METADATA_CSUM);

	if (!FUNC0(fs->super, flag))
		return 0;

	crc = FUNC2(fs, sb);
	sb->s_checksum = FUNC1(crc);

	return 0;
}