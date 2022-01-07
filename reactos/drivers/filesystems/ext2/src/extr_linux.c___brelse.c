
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct buffer_head {int b_data; int b_blocknr; int b_size; int b_link; int b_ts_drop; int b_count; struct block_device* b_bdev; } ;
struct block_device {int bd_bh_lock; int bd_priv; } ;
struct TYPE_9__ {int Wait; } ;
struct TYPE_12__ {TYPE_3__ bhReaper; } ;
struct TYPE_11__ {int bh_count; } ;
struct TYPE_8__ {int bd_bh_notify; int bd_bh_free; } ;
struct TYPE_7__ {scalar_t__ Type; } ;
struct TYPE_10__ {TYPE_2__ bd; TYPE_1__ Identifier; } ;
typedef TYPE_4__* PEXT2_VCB ;


 int ASSERT (int) ;
 int DEBUG (int ,char*) ;
 int DL_BH ;
 scalar_t__ EXT2VCB ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 TYPE_6__* Ext2Global ;
 int FALSE ;
 int InsertTailList (int *,int *) ;
 int IsListEmpty (int *) ;
 int KeClearEvent (int *) ;
 int KeQuerySystemTime (int *) ;
 int KeSetEvent (int *,int ,int ) ;
 int RemoveEntryList (int *) ;
 int TRUE ;
 int WRITE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 TYPE_5__ g_jbh ;
 int ll_rw_block (int ,int,struct buffer_head**) ;

void __brelse(struct buffer_head *bh)
{
    struct block_device *bdev = bh->b_bdev;
    PEXT2_VCB Vcb = (PEXT2_VCB)bdev->bd_priv;

    ASSERT(Vcb->Identifier.Type == EXT2VCB);


    while (buffer_dirty(bh)) {
        ll_rw_block(WRITE, 1, &bh);
    }

    ExAcquireResourceExclusiveLite(&bdev->bd_bh_lock, TRUE);
    if (atomic_dec_and_test(&bh->b_count)) {
        ASSERT(0 == atomic_read(&bh->b_count));
    } else {
        ExReleaseResourceLite(&bdev->bd_bh_lock);
        return;
    }
    KeQuerySystemTime(&bh->b_ts_drop);



    RemoveEntryList(&bh->b_link);
    InsertTailList(&Vcb->bd.bd_bh_free, &bh->b_link);
    KeClearEvent(&Vcb->bd.bd_bh_notify);
    ExReleaseResourceLite(&bdev->bd_bh_lock);
    KeSetEvent(&Ext2Global->bhReaper.Wait, 0, FALSE);

    DEBUG(DL_BH, ("brelse: cnt=%u size=%u blk=%10.10xh bh=%p ptr=%p\n",
                  atomic_read(&g_jbh.bh_count) - 1, bh->b_size,
                  bh->b_blocknr, bh, bh->b_data ));
}
