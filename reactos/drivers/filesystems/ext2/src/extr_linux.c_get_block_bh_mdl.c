
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct buffer_head {unsigned long b_size; int b_link; int * b_data; TYPE_4__* b_mdl; scalar_t__ b_blocknr; struct block_device* b_bdev; } ;
struct block_device {int bd_bh_lock; TYPE_1__* bd_priv; } ;
typedef scalar_t__ sector_t ;
typedef int s64 ;
struct TYPE_11__ {int MdlFlags; } ;
struct TYPE_10__ {int bh_count; } ;
struct TYPE_9__ {int QuadPart; } ;
struct TYPE_8__ {int Volume; } ;
typedef int * PVOID ;
typedef TYPE_1__* PEXT2_VCB ;
typedef TYPE_2__ LARGE_INTEGER ;


 int BLOCK_BITS ;
 int CcPinRead (int ,TYPE_2__*,unsigned long,int ,int **,int **) ;
 int CcPreparePinWrite (int ,TYPE_2__*,unsigned long,int ,int ,int **,int **) ;
 int CcUnpinData (int *) ;
 int DEBUG (int ,char*) ;
 int DL_BH ;
 int DbgBreak () ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExAcquireSharedStarveExclusive (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 TYPE_4__* Ext2CreateMdl (int *,unsigned long,int ) ;
 int Ext2Sleep (int) ;
 int FALSE ;
 int HighPagePriority ;
 int InitializeListHead (int *) ;
 int IoModifyAccess ;
 int KernelMode ;
 int * MmMapLockedPagesSpecifyCache (TYPE_4__*,int ,int ,int *,int ,int ) ;
 int MmNonCached ;
 int PIN_WAIT ;
 int RemoveEntryList (int *) ;
 scalar_t__ TOTAL_BLOCKS ;
 int TRUE ;
 int atomic_read (int *) ;
 int buffer_head_insert (struct block_device*,struct buffer_head*) ;
 struct buffer_head* buffer_head_search (struct block_device*,scalar_t__) ;
 int free_buffer_head (struct buffer_head*) ;
 TYPE_3__ g_jbh ;
 int get_bh (struct buffer_head*) ;
 struct buffer_head* new_buffer_head () ;
 int set_buffer_uptodate (struct buffer_head*) ;

struct buffer_head *
get_block_bh_mdl(
    struct block_device * bdev,
    sector_t block,
    unsigned long size,
    int zero
)
{
    PEXT2_VCB Vcb = bdev->bd_priv;
    LARGE_INTEGER offset;
    PVOID bcb = ((void*)0);
    PVOID ptr = ((void*)0);

    struct list_head *entry;


    struct buffer_head *bh = ((void*)0), *tbh = ((void*)0);


    if (block >= TOTAL_BLOCKS) {
        DbgBreak();
        goto errorout;
    }


    ExAcquireSharedStarveExclusive(&bdev->bd_bh_lock, TRUE);
    tbh = buffer_head_search(bdev, block);
    if (tbh) {
        bh = tbh;
        get_bh(bh);
        ExReleaseResourceLite(&bdev->bd_bh_lock);
        goto errorout;
    }
    ExReleaseResourceLite(&bdev->bd_bh_lock);

    bh = new_buffer_head();
    if (!bh) {
        goto errorout;
    }
    bh->b_bdev = bdev;
    bh->b_blocknr = block;
    bh->b_size = size;
    bh->b_data = ((void*)0);




again:

    offset.QuadPart = (s64) bh->b_blocknr;
    offset.QuadPart <<= BLOCK_BITS;

    if (zero) {

        if (!CcPreparePinWrite(Vcb->Volume,
                            &offset,
                            bh->b_size,
                            FALSE,
                            PIN_WAIT ,
                            &bcb,
                            &ptr)) {
            Ext2Sleep(100);
            goto again;
        }
    } else {
        if (!CcPinRead( Vcb->Volume,
                        &offset,
                        bh->b_size,
                        PIN_WAIT,
                        &bcb,
                        &ptr)) {
            Ext2Sleep(100);
            goto again;
        }
        set_buffer_uptodate(bh);
    }

    bh->b_mdl = Ext2CreateMdl(ptr, bh->b_size, IoModifyAccess);
    if (bh->b_mdl) {


        bh->b_data = MmMapLockedPagesSpecifyCache(
                         bh->b_mdl, KernelMode, MmNonCached,
                         ((void*)0),FALSE, HighPagePriority);

    }
    if (!bh->b_mdl || !bh->b_data) {
        free_buffer_head(bh);
        bh = ((void*)0);
        goto errorout;
    }

    get_bh(bh);

    DEBUG(DL_BH, ("getblk: Vcb=%p bhcount=%u block=%u bh=%p mdl=%p (Flags:%xh VA:%p)\n",
                  Vcb, atomic_read(&g_jbh.bh_count), block, bh, bh->b_mdl, bh->b_mdl->MdlFlags, bh->b_data));

    ExAcquireResourceExclusiveLite(&bdev->bd_bh_lock, TRUE);

    tbh = buffer_head_search(bdev, block);
    if (tbh) {
        free_buffer_head(bh);
        bh = tbh;
        get_bh(bh);
        RemoveEntryList(&bh->b_link);
        InitializeListHead(&bh->b_link);
        ExReleaseResourceLite(&bdev->bd_bh_lock);
        goto errorout;
    } else {
        buffer_head_insert(bdev, bh);
    }
    ExReleaseResourceLite(&bdev->bd_bh_lock);


errorout:

    if (bcb)
        CcUnpinData(bcb);

    return bh;
}
