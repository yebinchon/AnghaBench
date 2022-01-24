#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ blk64_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* block_alloc_stats ) (TYPE_1__*,scalar_t__,int) ;int /*<<< orphan*/  super; int /*<<< orphan*/  block_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__,int) ; 

void FUNC14(ext2_filsys fs, blk64_t blk, int inuse)
{
	int	group = FUNC8(fs, blk);

	if (blk >= FUNC5(fs->super)) {
#ifndef OMIT_COM_ERR
		FUNC1("ext2fs_block_alloc_stats", 0,
			"Illegal block number: %lu", (unsigned long) blk);
#endif
		return;
	}
	if (inuse > 0)
		FUNC10(fs->block_map, blk);
	else
		FUNC12(fs->block_map, blk);
	FUNC4(fs, group, FUNC3(fs, group) - inuse);
	FUNC2(fs, group, EXT2_BG_BLOCK_UNINIT);
	FUNC7(fs, group);

	FUNC6(fs->super,
			     -inuse * (blk64_t) FUNC0(fs));
	FUNC11(fs);
	FUNC9(fs);
	if (fs->block_alloc_stats)
		(fs->block_alloc_stats)(fs, (blk64_t) blk, inuse);
}