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
struct ext2_super_block {int /*<<< orphan*/  s_checksum; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ __u32 ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int EXT2_FLAG_SWAP_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ EXT4_FEATURE_RO_COMPAT_METADATA_CSUM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct ext2_super_block*) ; 

int FUNC4(ext2_filsys fs, struct ext2_super_block *sb)
{
	__u32 flag, calculated;

	if (fs->flags & EXT2_FLAG_SWAP_BYTES)
		flag = EXT4_FEATURE_RO_COMPAT_METADATA_CSUM;
	else
		flag = FUNC1(EXT4_FEATURE_RO_COMPAT_METADATA_CSUM);

	if (!FUNC0(fs->super, flag))
		return 1;

	calculated = FUNC3(fs, sb);

	return FUNC2(sb->s_checksum) == calculated;
}