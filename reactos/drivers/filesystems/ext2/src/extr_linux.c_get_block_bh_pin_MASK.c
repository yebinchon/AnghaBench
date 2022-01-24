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
struct list_head {int dummy; } ;
struct buffer_head {unsigned long b_size; int /*<<< orphan*/  b_link; int /*<<< orphan*/ * b_data; scalar_t__ b_bcb; scalar_t__ b_blocknr; struct block_device* b_bdev; } ;
struct block_device {int /*<<< orphan*/  bd_bh_lock; TYPE_1__* bd_priv; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_8__ {int /*<<< orphan*/  bh_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_6__ {int /*<<< orphan*/  Volume; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PEXT2_VCB ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int ERESOURCE_THREAD ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,unsigned long,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_BH ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PIN_WAIT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ TOTAL_BLOCKS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct block_device*,struct buffer_head*) ; 
 struct buffer_head* FUNC13 (struct block_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 TYPE_3__ g_jbh ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 struct buffer_head* FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 

struct buffer_head *
FUNC18(
    struct block_device *   bdev,
    sector_t                block,
    unsigned long           size,
    int                     zero
) 
{
    PEXT2_VCB Vcb = bdev->bd_priv;
    LARGE_INTEGER offset;

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
    tbh = FUNC13(bdev, block);
    if (tbh) {
        bh = tbh;
        FUNC15(bh);
        FUNC7(&bdev->bd_bh_lock);
        goto errorout;
    }
    FUNC7(&bdev->bd_bh_lock);

    bh = FUNC16();
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
        if (!FUNC1(Vcb->Volume,
                            &offset,
                            bh->b_size,
                            FALSE,
                            PIN_WAIT,
                            &bh->b_bcb,
                            (PVOID *)&bh->b_data)) {
            FUNC8(100);
            goto again;
        }
    } else {
        if (!FUNC0( Vcb->Volume,
                        &offset,
                        bh->b_size,
                        PIN_WAIT,
                        &bh->b_bcb,
                        (PVOID *)&bh->b_data)) {
            FUNC8(100);
            goto again;
        }
        FUNC17(bh);
    }

    if (bh->b_bcb)
        FUNC2(bh->b_bcb, (PVOID)((ERESOURCE_THREAD)bh | 0x3));

    if (!bh->b_data) {
        FUNC14(bh);
        bh = NULL;
        goto errorout;
    }
    FUNC15(bh);

    FUNC3(DL_BH, ("getblk: Vcb=%p bhcount=%u block=%u bh=%p ptr=%p.\n",
                  Vcb, FUNC11(&g_jbh.bh_count), block, bh, bh->b_data));

    FUNC5(&bdev->bd_bh_lock, TRUE);
    /* do search again here */
    tbh = FUNC13(bdev, block);
    if (tbh) {
        FUNC15(tbh);
        FUNC14(bh);
        bh = tbh;
        FUNC10(&bh->b_link);
        FUNC9(&bh->b_link);
        FUNC7(&bdev->bd_bh_lock);
        goto errorout;
    } else {
        FUNC12(bdev, bh);
    }
    FUNC7(&bdev->bd_bh_lock);

    /* we get it */
errorout:

    return bh;
}