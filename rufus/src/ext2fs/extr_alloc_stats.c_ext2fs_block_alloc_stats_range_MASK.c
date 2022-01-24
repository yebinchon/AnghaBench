#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ blk_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* block_alloc_stats_range ) (TYPE_1__*,scalar_t__,scalar_t__,int) ;int /*<<< orphan*/  super; int /*<<< orphan*/  block_map; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,scalar_t__,scalar_t__,int) ; 

void FUNC15(ext2_filsys fs, blk64_t blk,
				    blk_t num, int inuse)
{
#ifndef OMIT_COM_ERR
	if (blk + num > FUNC5(fs->super)) {
		FUNC1("ext2fs_block_alloc_stats_range", 0,
			"Illegal block range: %llu (%u) ",
			(unsigned long long) blk, num);
		return;
	}
#endif
	if (inuse == 0)
		return;
	if (inuse > 0) {
		FUNC11(fs->block_map, blk, num);
		inuse = 1;
	} else {
		FUNC13(fs->block_map, blk, num);
		inuse = -1;
	}
	while (num) {
		int group = FUNC9(fs, blk);
		blk64_t last_blk = FUNC8(fs, group);
		blk64_t n = num;

		if (blk + num > last_blk)
			n = last_blk - blk + 1;

		FUNC4(fs, group,
			FUNC3(fs, group) -
			inuse*n/FUNC0(fs));
		FUNC2(fs, group, EXT2_BG_BLOCK_UNINIT);
		FUNC7(fs, group);
		FUNC6(fs->super, -inuse * (blk64_t) n);
		blk += n;
		num -= n;
	}
	FUNC12(fs);
	FUNC10(fs);
	if (fs->block_alloc_stats_range)
		(fs->block_alloc_stats_range)(fs, blk, num, inuse);
}