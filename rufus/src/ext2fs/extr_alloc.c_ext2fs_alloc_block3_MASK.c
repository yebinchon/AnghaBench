#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct blk_alloc_ctx {int dummy; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk64_t ;
struct TYPE_9__ {int /*<<< orphan*/  io; int /*<<< orphan*/  blocksize; int /*<<< orphan*/  block_map; scalar_t__ (* get_alloc_block ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* get_alloc_block2 ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct blk_alloc_ctx*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct blk_alloc_ctx*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct blk_alloc_ctx*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

errcode_t FUNC8(ext2_filsys fs, blk64_t goal, char *block_buf,
			      blk64_t *ret, struct blk_alloc_ctx *ctx)
{
	errcode_t	retval;
	blk64_t		block;

	if (fs->get_alloc_block2) {
		retval = (fs->get_alloc_block2)(fs, goal, &block, ctx);
		if (retval)
			goto fail;
	} else if (fs->get_alloc_block) {
		retval = (fs->get_alloc_block)(fs, goal, &block);
		if (retval)
			goto fail;
	} else {
		if (!fs->block_map) {
			retval = FUNC2(fs);
			if (retval)
				goto fail;
		}

		retval = FUNC1(fs, goal, 0, &block, ctx);
		if (retval)
			goto fail;
	}

	if (block_buf) {
		FUNC5(block_buf, 0, fs->blocksize);
		retval = FUNC4(fs->io, block, 1, block_buf);
	} else
		retval = FUNC3(fs, block, 1, NULL, NULL);
	if (retval)
		goto fail;

	FUNC0(fs, block, +1);
	*ret = block;

fail:
	return retval;
}