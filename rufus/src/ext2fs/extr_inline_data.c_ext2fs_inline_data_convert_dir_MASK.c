#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext2_dir_entry_tail {int dummy; } ;
struct ext2_dir_entry {char* name; int rec_len; int /*<<< orphan*/  inode; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {int blocksize; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 struct ext2_dir_entry_tail* FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int EXT2_FT_DIR ; 
 int EXT4_INLINE_DATA_DOTDOT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ext2_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ext2_dir_entry*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct ext2_dir_entry*,unsigned int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct ext2_dir_entry_tail*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,unsigned int,struct ext2_dir_entry*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static errcode_t FUNC11(ext2_filsys fs, ext2_ino_t ino,
						char *bbuf, char *ibuf, int size)
{
	struct ext2_dir_entry *dir, *dir2;
	struct ext2_dir_entry_tail *t;
	errcode_t retval;
	int offset;
	unsigned int rec_len;
	int csum_size = 0;
	int filetype = 0;

	if (FUNC6(fs->super))
		csum_size = sizeof(struct ext2_dir_entry_tail);

	/* Create '.' and '..' */
	if (FUNC5(fs->super))
		filetype = EXT2_FT_DIR;

	/*
	 * Set up entry for '.'
	 */
	dir = (struct ext2_dir_entry *) bbuf;
	dir->inode = ino;
	FUNC3(dir, 1);
	FUNC2(dir, filetype);
	dir->name[0] = '.';
	rec_len = (fs->blocksize - csum_size) - FUNC1(1);
	dir->rec_len = FUNC1(1);

	/*
	 * Set up entry for '..'
	 */
	dir = (struct ext2_dir_entry *) (bbuf + dir->rec_len);
	dir->rec_len = FUNC1(2);
	dir->inode = FUNC8(((__u32 *)ibuf)[0]);
	FUNC3(dir, 2);
	FUNC2(dir, filetype);
	dir->name[0] = '.';
	dir->name[1] = '.';

	/*
	 * Adjust the last rec_len
	 */
	offset = FUNC1(1) + FUNC1(2);
	dir = (struct ext2_dir_entry *) (bbuf + offset);
	FUNC10(bbuf + offset, ibuf + EXT4_INLINE_DATA_DOTDOT_SIZE,
	       size - EXT4_INLINE_DATA_DOTDOT_SIZE);
	size += FUNC1(1) + FUNC1(2) -
		EXT4_INLINE_DATA_DOTDOT_SIZE;

	do {
		dir2 = dir;
		retval = FUNC4(fs, dir, &rec_len);
		if (retval)
			goto err;
		offset += rec_len;
		dir = (struct ext2_dir_entry *) (bbuf + offset);
	} while (offset < size);
	rec_len += fs->blocksize - csum_size - offset;
	retval = FUNC9(fs, rec_len, dir2);
	if (retval)
		goto err;

	if (csum_size) {
		t = FUNC0(bbuf, fs->blocksize);
		FUNC7(fs, t);
	}

err:
	return retval;
}