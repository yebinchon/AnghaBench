
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct buffer_head {int b_data; int b_size; scalar_t__ b_blocknr; struct block_device* b_bdev; } ;
struct block_device {TYPE_2__* bd_priv; } ;
typedef int ULONG ;
struct TYPE_11__ {int Flags; } ;
struct TYPE_10__ {int QuadPart; } ;
struct TYPE_8__ {scalar_t__ Type; } ;
struct TYPE_9__ {TYPE_6__* Volume; TYPE_1__ Identifier; } ;
typedef int PVOID ;
typedef TYPE_2__* PEXT2_VCB ;
typedef int PBCB ;
typedef int LONGLONG ;
typedef TYPE_3__ LARGE_INTEGER ;


 int ASSERT (int) ;
 int BLOCK_BITS ;
 int BLOCK_SIZE ;
 scalar_t__ CcPreparePinWrite (TYPE_6__*,TYPE_3__*,int ,int ,int ,int *,int *) ;
 int CcSetDirtyPinnedData (int ,int *) ;
 int CcUnpinData (int ) ;
 int DbgBreak () ;
 scalar_t__ EXT2VCB ;
 int Ext2AddBlockExtent (TYPE_2__*,int *,int ,int ,int) ;
 int FALSE ;
 int FO_FILE_MODIFIED ;
 scalar_t__ IsVcbReadOnly (TYPE_2__*) ;
 int PIN_WAIT ;
 int SetFlag (int ,int ) ;
 int WRITE ;
 scalar_t__ memcmp (int ,int,int ) ;
 int memmove (int ,int,int ) ;
 int put_bh (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

int submit_bh_mdl(int rw, struct buffer_head *bh)
{
    struct block_device *bdev = bh->b_bdev;
    PEXT2_VCB Vcb = bdev->bd_priv;
    PBCB Bcb;
    PVOID Buffer;
    LARGE_INTEGER Offset;

    ASSERT(Vcb->Identifier.Type == EXT2VCB);
    ASSERT(bh->b_data);

    if (rw == WRITE) {

        if (IsVcbReadOnly(Vcb)) {
            goto errorout;
        }

        SetFlag(Vcb->Volume->Flags, FO_FILE_MODIFIED);
        Offset.QuadPart = ((LONGLONG)bh->b_blocknr) << BLOCK_BITS;


        if (CcPreparePinWrite(
                    Vcb->Volume,
                    &Offset,
                    BLOCK_SIZE,
                    FALSE,
                    PIN_WAIT ,
                    &Bcb,
                    &Buffer )) {






            CcSetDirtyPinnedData(Bcb, ((void*)0));
            Ext2AddBlockExtent( Vcb, ((void*)0),
                                (ULONG)bh->b_blocknr,
                                (ULONG)bh->b_blocknr,
                                (bh->b_size >> BLOCK_BITS));
            CcUnpinData(Bcb);
        } else {

            Ext2AddBlockExtent( Vcb, ((void*)0),
                                (ULONG)bh->b_blocknr,
                                (ULONG)bh->b_blocknr,
                                (bh->b_size >> BLOCK_BITS));
        }

    } else {
    }

errorout:

    unlock_buffer(bh);
    put_bh(bh);
    return 0;
}
