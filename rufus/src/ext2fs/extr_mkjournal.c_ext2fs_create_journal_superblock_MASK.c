#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* h_blocktype; void* h_magic; } ;
struct TYPE_9__ {void* s_first; void* s_nr_users; int /*<<< orphan*/  s_uuid; void* s_sequence; void* s_maxlen; void* s_blocksize; TYPE_1__ s_header; } ;
typedef  TYPE_2__ journal_superblock_t ;
typedef  TYPE_3__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_11__ {int /*<<< orphan*/  s_uuid; } ;
struct TYPE_10__ {int blocksize; TYPE_5__* super; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_ET_JOURNAL_TOO_SMALL ; 
 int EXT2_MKJOURNAL_V1_SUPER ; 
 int JFS_MAGIC_NUMBER ; 
 scalar_t__ JFS_MIN_JOURNAL_BLOCKS ; 
 int JFS_SUPERBLOCK_V1 ; 
 int JFS_SUPERBLOCK_V2 ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__**) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

errcode_t FUNC6(ext2_filsys fs,
					   __u32 num_blocks, int flags,
					   char  **ret_jsb)
{
	errcode_t		retval;
	journal_superblock_t	*jsb;

	if (num_blocks < JFS_MIN_JOURNAL_BLOCKS)
		return EXT2_ET_JOURNAL_TOO_SMALL;

	if ((retval = FUNC0(fs->blocksize, &jsb)))
		return retval;

	FUNC5 (jsb, 0, fs->blocksize);

	jsb->s_header.h_magic = FUNC3(JFS_MAGIC_NUMBER);
	if (flags & EXT2_MKJOURNAL_V1_SUPER)
		jsb->s_header.h_blocktype = FUNC3(JFS_SUPERBLOCK_V1);
	else
		jsb->s_header.h_blocktype = FUNC3(JFS_SUPERBLOCK_V2);
	jsb->s_blocksize = FUNC3(fs->blocksize);
	jsb->s_maxlen = FUNC3(num_blocks);
	jsb->s_nr_users = FUNC3(1);
	jsb->s_first = FUNC3(1);
	jsb->s_sequence = FUNC3(1);
	FUNC4(jsb->s_uuid, fs->super->s_uuid, sizeof(fs->super->s_uuid));
	/*
	 * If we're creating an external journal device, we need to
	 * adjust these fields.
	 */
	if (FUNC1(fs->super)) {
		jsb->s_nr_users = 0;
		jsb->s_first = FUNC3(FUNC2(fs->blocksize) + 1);
	}

	*ret_jsb = (char *) jsb;
	return 0;
}