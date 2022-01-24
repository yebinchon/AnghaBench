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
struct ext2_inode {scalar_t__ i_block; } ;
struct ext2_inline_data {size_t ea_size; int /*<<< orphan*/  ea_data; int /*<<< orphan*/  ino; int /*<<< orphan*/  fs; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  scalar_t__ errcode_t ;

/* Variables and functions */
 size_t EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ext2_inline_data*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,size_t) ; 

errcode_t FUNC4(ext2_filsys fs, ext2_ino_t ino,
				 struct ext2_inode *inode,
				 void *buf, size_t *size)
{
	struct ext2_inode inode_buf;
	struct ext2_inline_data data;
	errcode_t retval;

	if (!inode) {
		retval = FUNC2(fs, ino, &inode_buf);
		if (retval)
			return retval;
		inode = &inode_buf;
	}

	data.fs = fs;
	data.ino = ino;
	retval = FUNC1(&data);
	if (retval)
		return retval;

	FUNC3(buf, (void *)inode->i_block, EXT4_MIN_INLINE_DATA_SIZE);
	if (data.ea_size > 0)
		FUNC3((char *) buf + EXT4_MIN_INLINE_DATA_SIZE,
		       data.ea_data, data.ea_size);

	if (size)
		*size = EXT4_MIN_INLINE_DATA_SIZE + data.ea_size;
	FUNC0(&data.ea_data);
	return 0;
}