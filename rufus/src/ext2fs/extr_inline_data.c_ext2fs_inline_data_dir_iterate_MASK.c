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
struct ext2_inode {int i_flags; int /*<<< orphan*/ * i_block; int /*<<< orphan*/  i_mode; } ;
struct ext2_inline_data {int ea_size; char* ea_data; void* ino; int /*<<< orphan*/  fs; } ;
struct ext2_dir_entry {int name_len; char* name; void* inode; } ;
struct dir_context {char* buf; unsigned int buflen; int flags; void* errcode; } ;
typedef  void* ext2_ino_t ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  void* errcode_t ;
typedef  scalar_t__ e2_blkcnt_t ;

/* Variables and functions */
 int BLOCK_ABORT ; 
 int BLOCK_INLINE_DATA_CHANGED ; 
 int DIRENT_FLAG_INCLUDE_INLINE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* EXT2_ET_NO_DIRECTORY ; 
 void* EXT2_ET_NO_INLINE_DATA ; 
 int EXT4_INLINE_DATA_DOTDOT_SIZE ; 
 int EXT4_INLINE_DATA_FL ; 
 int EXT4_MIN_INLINE_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ext2_dir_entry*,unsigned int*) ; 
 void* FUNC7 (struct ext2_inline_data*) ; 
 void* FUNC8 (struct ext2_inline_data*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,void*,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_dir_entry*) ; 
 void* FUNC13 (int /*<<< orphan*/ ,void*,struct ext2_inode*) ; 

int FUNC14(ext2_filsys fs, ext2_ino_t ino,
				   void *priv_data)
{
	struct dir_context *ctx;
	struct ext2_inode inode;
	struct ext2_dir_entry dirent;
	struct ext2_inline_data data;
	int ret = BLOCK_ABORT;
	e2_blkcnt_t blockcnt = 0;
	char *old_buf;
	unsigned int old_buflen;
	int old_flags;

	ctx = (struct dir_context *)priv_data;
	old_buf = ctx->buf;
	old_buflen = ctx->buflen;
	old_flags = ctx->flags;
	ctx->flags |= DIRENT_FLAG_INCLUDE_INLINE_DATA;

	ctx->errcode = FUNC11(fs, ino, &inode);
	if (ctx->errcode)
		goto out;

	if (!(inode.i_flags & EXT4_INLINE_DATA_FL)) {
		ctx->errcode = EXT2_ET_NO_INLINE_DATA;
		goto out;
	}

	if (!FUNC1(inode.i_mode)) {
		ctx->errcode = EXT2_ET_NO_DIRECTORY;
		goto out;
	}
	ret = 0;

	/* we first check '.' and '..' dir */
	dirent.inode = ino;
	dirent.name_len = 1;
	FUNC12(fs, FUNC0(2), &dirent);
	dirent.name[0] = '.';
	dirent.name[1] = '\0';
	ctx->buf = (char *)&dirent;
	FUNC6(fs, &dirent, &ctx->buflen);
	ret |= FUNC10(fs, 0, blockcnt++, 0, 0, priv_data);
	if (ret & BLOCK_ABORT)
		goto out;

	dirent.inode = FUNC9(inode.i_block[0]);
	dirent.name_len = 2;
	FUNC12(fs, FUNC0(3), &dirent);
	dirent.name[0] = '.';
	dirent.name[1] = '.';
	dirent.name[2] = '\0';
	ctx->buf = (char *)&dirent;
	FUNC6(fs, &dirent, &ctx->buflen);
	ret |= FUNC10(fs, 0, blockcnt++, 0, 0, priv_data);
	if (ret & BLOCK_INLINE_DATA_CHANGED) {
		errcode_t err;

		inode.i_block[0] = FUNC2(dirent.inode);
		err = FUNC13(fs, ino, &inode);
		if (err)
			goto out;
		ret &= ~BLOCK_INLINE_DATA_CHANGED;
	}
	if (ret & BLOCK_ABORT)
		goto out;

	ctx->buf = (char *)inode.i_block + EXT4_INLINE_DATA_DOTDOT_SIZE;
	ctx->buflen = EXT4_MIN_INLINE_DATA_SIZE - EXT4_INLINE_DATA_DOTDOT_SIZE;
#ifdef WORDS_BIGENDIAN
	ctx->errcode = ext2fs_dirent_swab_in2(fs, ctx->buf, ctx->buflen, 0);
	if (ctx->errcode) {
		ret |= BLOCK_ABORT;
		goto out;
	}
#endif
	ret |= FUNC10(fs, 0, blockcnt++, 0, 0, priv_data);
	if (ret & BLOCK_INLINE_DATA_CHANGED) {
#ifdef WORDS_BIGENDIAN
		ctx->errcode = ext2fs_dirent_swab_out2(fs, ctx->buf,
						       ctx->buflen, 0);
		if (ctx->errcode) {
			ret |= BLOCK_ABORT;
			goto out;
		}
#endif
		ctx->errcode = FUNC13(fs, ino, &inode);
		if (ctx->errcode)
			ret |= BLOCK_ABORT;
		ret &= ~BLOCK_INLINE_DATA_CHANGED;
	}
	if (ret & BLOCK_ABORT)
		goto out;

	data.fs = fs;
	data.ino = ino;
	ctx->errcode = FUNC7(&data);
	if (ctx->errcode) {
		ret |= BLOCK_ABORT;
		goto out;
	}
	if (data.ea_size <= 0)
		goto out1;

	ctx->buf = data.ea_data;
	ctx->buflen = data.ea_size;
#ifdef WORDS_BIGENDIAN
	ctx->errcode = ext2fs_dirent_swab_in2(fs, ctx->buf, ctx->buflen, 0);
	if (ctx->errcode) {
		ret |= BLOCK_ABORT;
		goto out1;
	}
#endif

	ret |= FUNC10(fs, 0, blockcnt++, 0, 0, priv_data);
	if (ret & BLOCK_INLINE_DATA_CHANGED) {
#ifdef WORDS_BIGENDIAN
		ctx->errcode = ext2fs_dirent_swab_out2(fs, ctx->buf,
						      ctx->buflen, 0);
		if (ctx->errcode) {
			ret |= BLOCK_ABORT;
			goto out1;
		}
#endif
		ctx->errcode = FUNC8(&data);
		if (ctx->errcode)
			ret |= BLOCK_ABORT;
	}

out1:
	FUNC5(&data.ea_data);
out:
	ctx->buf = old_buf;
	ctx->buflen = old_buflen;
	ctx->flags = old_flags;
	ret &= ~(BLOCK_ABORT | BLOCK_INLINE_DATA_CHANGED);
	return ret;
}