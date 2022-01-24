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
struct ext2_dir_entry {char* name; int rec_len; void* inode; } ;
typedef  void* ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
struct TYPE_6__ {int blocksize; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct ext2_dir_entry_tail* FUNC1 (char*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int EXT2_FT_DIR ; 
 int /*<<< orphan*/  FUNC3 (struct ext2_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (int,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct ext2_dir_entry_tail*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int,struct ext2_dir_entry*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 

errcode_t FUNC12(ext2_filsys fs, ext2_ino_t dir_ino,
			       ext2_ino_t parent_ino, char **block)
{
	struct ext2_dir_entry 	*dir = NULL;
	errcode_t		retval;
	char			*buf;
	int			rec_len;
	int			filetype = 0;
	struct ext2_dir_entry_tail	*t;
	int			csum_size = 0;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	retval = FUNC6(fs->blocksize, &buf);
	if (retval)
		return retval;
	FUNC11(buf, 0, fs->blocksize);
	dir = (struct ext2_dir_entry *) buf;

	if (FUNC8(fs->super))
		csum_size = sizeof(struct ext2_dir_entry_tail);

	retval = FUNC10(fs, fs->blocksize - csum_size, dir);
	if (retval) {
		FUNC5(&buf);
		return retval;
	}

	if (dir_ino) {
		if (FUNC7(fs->super))
			filetype = EXT2_FT_DIR;
		/*
		 * Set up entry for '.'
		 */
		dir->inode = dir_ino;
		FUNC4(dir, 1);
		FUNC3(dir, filetype);
		dir->name[0] = '.';
		rec_len = (fs->blocksize - csum_size) - FUNC2(1);
		dir->rec_len = FUNC2(1);

		/*
		 * Set up entry for '..'
		 */
		dir = (struct ext2_dir_entry *) (buf + dir->rec_len);
		retval = FUNC10(fs, rec_len, dir);
		if (retval) {
			FUNC5(&buf);
			return retval;
		}
		dir->inode = parent_ino;
		FUNC4(dir, 2);
		FUNC3(dir, filetype);
		dir->name[0] = '.';
		dir->name[1] = '.';

	}

	if (csum_size) {
		t = FUNC1(buf, fs->blocksize);
		FUNC9(fs, t);
	}
	*block = buf;
	return 0;
}