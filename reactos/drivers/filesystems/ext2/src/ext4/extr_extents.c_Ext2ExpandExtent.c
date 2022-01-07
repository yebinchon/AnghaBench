
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {int Inode; int Extents; int Flags; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef TYPE_1__* PLARGE_INTEGER ;
typedef int PEXT2_VCB ;
typedef TYPE_2__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;
typedef int LONGLONG ;


 int BLOCK_BITS ;
 int ClearFlag (int ,int ) ;
 int DbgBreak () ;
 int Ext2AddBlockExtent (int ,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;
 int Ext2ClearAllExtents (int *) ;
 int Ext2DoExtentExpand (int ,int ,TYPE_2__*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int Ext2SaveInode (int ,int ,int *) ;
 scalar_t__ IsZoneInited (TYPE_2__*) ;
 int MCB_ZONE_INITED ;
 int NT_SUCCESS (int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS
Ext2ExpandExtent(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb,
    ULONG Start,
    ULONG End,
    PLARGE_INTEGER Size
    )
{
    ULONG Count = 0, Number = 0, Block = 0;
    NTSTATUS Status = STATUS_SUCCESS;

    if (End <= Start)
        return Status;

    while (End > Start + Count) {

        Number = End - Start - Count;
        Status = Ext2DoExtentExpand(IrpContext, Vcb, Mcb, Start + Count,
                                    &Block, &Number);
        if (!NT_SUCCESS(Status)) {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            break;
        }
        if (Number == 0) {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            break;
        }

        if (Block && IsZoneInited(Mcb)) {
            if (!Ext2AddBlockExtent(Vcb, Mcb, Start + Count, Block, Number)) {
                DbgBreak();
                ClearFlag(Mcb->Flags, MCB_ZONE_INITED);
                Ext2ClearAllExtents(&Mcb->Extents);
            }
        }
        Count += Number;
    }

    Size->QuadPart = ((LONGLONG)(Start + Count)) << BLOCK_BITS;


    Ext2SaveInode(IrpContext, Vcb, &Mcb->Inode);

    return Status;
}
