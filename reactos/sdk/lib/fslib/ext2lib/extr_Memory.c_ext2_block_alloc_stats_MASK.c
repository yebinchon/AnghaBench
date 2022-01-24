#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_8__ {TYPE_2__* ext2_sb; TYPE_1__* group_desc; int /*<<< orphan*/  block_map; } ;
struct TYPE_7__ {int s_free_blocks_count; } ;
struct TYPE_6__ {int bg_free_blocks_count; } ;
typedef  TYPE_3__* PEXT2_FILESYS ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(PEXT2_FILESYS fs, ULONG blk, int inuse)
{
    int group = FUNC0(fs, blk);

    if (inuse > 0)
        FUNC1(fs->block_map, blk);
    else
        FUNC2(fs->block_map, blk);

    fs->group_desc[group].bg_free_blocks_count -= inuse;
    fs->ext2_sb->s_free_blocks_count -= inuse;
}