#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ULONG ;
struct TYPE_4__ {int s_groups_count; } ;
struct TYPE_5__ {TYPE_1__ sbi; int /*<<< orphan*/  sb; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  TYPE_2__* PEXT2_VCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  PEXT2_GROUP_DESC ;
typedef  scalar_t__ LONGLONG ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int BLOCKS_PER_GROUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ EXT2_FIRST_DATA_BLOCK ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int TOTAL_BLOCKS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOLEAN
FUNC9(PEXT2_IRP_CONTEXT IrpContext, PEXT2_VCB Vcb, LONGLONG Block)
{
    PEXT2_GROUP_DESC    gd;
    struct buffer_head *gb = NULL;
    struct buffer_head *bh = NULL;
    ULONG               group, dwBlk, Length;
    RTL_BITMAP          bitmap;
    BOOLEAN             bModified = FALSE;

    group = (ULONG)(Block - EXT2_FIRST_DATA_BLOCK) / BLOCKS_PER_GROUP;
    dwBlk = (ULONG)(Block - EXT2_FIRST_DATA_BLOCK) % BLOCKS_PER_GROUP;

    gd = FUNC5(&Vcb->sb, group, &gb);
    if (!gd) {
        return FALSE;
    }
    bh = FUNC8(&Vcb->sb, FUNC4(&Vcb->sb, gd));

    if (group == Vcb->sbi.s_groups_count - 1) {
        Length = (ULONG)(TOTAL_BLOCKS % BLOCKS_PER_GROUP);

        /* s_blocks_count is integer multiple of s_blocks_per_group */
        if (Length == 0)
            Length = BLOCKS_PER_GROUP;
    } else {
        Length = BLOCKS_PER_GROUP;
    }

    if (dwBlk >= Length) {
        FUNC6(&gb);
        FUNC6(&bh);
        return FALSE;
    }


    FUNC2(&bitmap, (PULONG)bh->b_data, Length);

    if (FUNC1(&bitmap, dwBlk) == 0) {
        FUNC0();
        FUNC3(&bitmap, dwBlk, 1);
        bModified = TRUE;
        FUNC7(bh);
    }

    FUNC6(&gb);
    FUNC6(&bh);

    return (!bModified);
}