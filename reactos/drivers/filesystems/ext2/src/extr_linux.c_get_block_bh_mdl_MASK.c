#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct buffer_head {unsigned long b_size; int /*<<< orphan*/  b_link; int /*<<< orphan*/ * b_data; TYPE_4__* b_mdl; scalar_t__ b_blocknr; struct block_device* b_bdev; } ;
struct block_device {int /*<<< orphan*/  bd_bh_lock; TYPE_1__* bd_priv; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_11__ {int /*<<< orphan*/  MdlFlags; } ;
struct TYPE_10__ {int /*<<< orphan*/  bh_count; } ;
struct TYPE_9__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_8__ {int /*<<< orphan*/  Volume; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PEXT2_VCB ;
typedef  TYPE_2__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_BH ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HighPagePriority ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IoModifyAccess ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MmNonCached ; 
 int /*<<< orphan*/  PIN_WAIT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ TOTAL_BLOCKS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct block_device*,struct buffer_head*) ; 
 struct buffer_head* FUNC15 (struct block_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 TYPE_3__ g_jbh ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 struct buffer_head* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 

struct buffer_head *
FUNC20(
    struct block_device *   bdev,
    sector_t                block,
    unsigned long           size,
    int                     zero
) 
{
    PEXT2_VCB Vcb = bdev->bd_priv;
    LARGE_INTEGER offset;
    PVOID         bcb = NULL;
    PVOID         ptr = NULL;

    struct list_head *entry;

    /* allocate buffer_head and initialize it */
    struct buffer_head *bh = NULL, *tbh = NULL;

    /* check the block is valid or not */
    if (block >= TOTAL_BLOCKS) {
        FUNC4();
        goto errorout;
    }

    /* search the bdev bh list */
    FUNC6(&bdev->bd_bh_lock, TRUE);
    tbh = FUNC15(bdev, block);
    if (tbh) {
        bh = tbh;
        FUNC17(bh);
        FUNC7(&bdev->bd_bh_lock);
        goto errorout;
    }
    FUNC7(&bdev->bd_bh_lock);

    bh = FUNC18();
    if (!bh) {
        goto errorout;
    }
    bh->b_bdev = bdev;
    bh->b_blocknr = block;
    bh->b_size = size;
    bh->b_data = NULL;
#ifdef __REACTOS__
    InitializeListHead(&bh->b_link);
#endif

again:

    offset.QuadPart = (s64) bh->b_blocknr;
    offset.QuadPart <<= BLOCK_BITS;

    if (zero) {
        /* PIN_EXCLUSIVE disabled, likely to deadlock with volume operations */
        if (!FUNC1(Vcb->Volume,
                            &offset,
                            bh->b_size,
                            FALSE,
                            PIN_WAIT /* | PIN_EXCLUSIVE */,
                            &bcb,
                            &ptr)) {
            FUNC9(100);
            goto again;
        }
    } else {
        if (!FUNC0( Vcb->Volume,
                        &offset,
                        bh->b_size,
                        PIN_WAIT,
                        &bcb,
                        &ptr)) {
            FUNC9(100);
            goto again;
        }
        FUNC19(bh);
    }

    bh->b_mdl = FUNC8(ptr, bh->b_size, IoModifyAccess);
    if (bh->b_mdl) {
        /* muse map the PTE to NonCached zone. journal recovery will
           access the PTE under spinlock: DISPATCH_LEVEL IRQL */
        bh->b_data = FUNC11(
                         bh->b_mdl, KernelMode, MmNonCached,
                         NULL,FALSE, HighPagePriority);
        /* bh->b_data = MmMapLockedPages(bh->b_mdl, KernelMode); */
    }
    if (!bh->b_mdl || !bh->b_data) {
        FUNC16(bh);
        bh = NULL;
        goto errorout;
    }

    FUNC17(bh);

    FUNC3(DL_BH, ("getblk: Vcb=%p bhcount=%u block=%u bh=%p mdl=%p (Flags:%xh VA:%p)\n",
                  Vcb, FUNC13(&g_jbh.bh_count), block, bh, bh->b_mdl, bh->b_mdl->MdlFlags, bh->b_data));

    FUNC5(&bdev->bd_bh_lock, TRUE);
    /* do search again here */
    tbh = FUNC15(bdev, block);
    if (tbh) {
        FUNC16(bh);
        bh = tbh;
        FUNC17(bh);
        FUNC12(&bh->b_link);
        FUNC10(&bh->b_link);
        FUNC7(&bdev->bd_bh_lock);
        goto errorout;
    } else {
        FUNC14(bdev, bh);
    }
    FUNC7(&bdev->bd_bh_lock);

    /* we get it */
errorout:

    if (bcb)
        FUNC2(bcb);

    return bh;
}