
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int __u32 ;
typedef int ULONG ;
struct TYPE_6__ {int * i_block; scalar_t__ i_size; scalar_t__ i_blocks; } ;
struct TYPE_7__ {TYPE_1__ Inode; int Flags; int MetaExts; int Extents; } ;
typedef int PEXT2_VCB ;
typedef TYPE_2__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;
typedef int LONGLONG ;


 int ASSERT (int ) ;
 int ClearFlag (int ,int ) ;
 int ClearLongFlag (int ,int ) ;
 int DbgBreak () ;
 int Ext2ClearAllExtents (int *) ;
 int Ext2FreeBlock (int ,int ,int ,int ) ;
 int Ext2InitializeZone (int ,int ,TYPE_2__*) ;
 scalar_t__ FsRtlGetNextLargeMcbEntry (int *,int,int*,int*,int*) ;
 scalar_t__ FsRtlNumberOfRunsInLargeMcb (int *) ;
 int IsZoneInited (TYPE_2__*) ;
 int MCB_ZONE_INITED ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int memset (int *,int ,int) ;

NTSTATUS
Ext2TruncateIndirectFast(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb
    )
{
    LONGLONG Vba;
    LONGLONG Lba;
    LONGLONG Length;
    NTSTATUS Status = STATUS_SUCCESS;
    int i;


    if (!IsZoneInited(Mcb)) {
        Status = Ext2InitializeZone(IrpContext, Vcb, Mcb);
        if (!NT_SUCCESS(Status)) {
            DbgBreak();
            ClearLongFlag(Mcb->Flags, MCB_ZONE_INITED);
            goto errorout;
        }
    }

    ASSERT (IsZoneInited(Mcb));


    if (FsRtlNumberOfRunsInLargeMcb(&Mcb->Extents) != 0) {
        for (i = 0; FsRtlGetNextLargeMcbEntry(&Mcb->Extents, i, &Vba, &Lba, &Length); i++) {

            if (-1 == Lba || Vba == 0 || Length <= 0)
                continue;

            Ext2FreeBlock(IrpContext, Vcb, (ULONG)(Lba - 1), (ULONG)Length);
        }
    }


    if (FsRtlNumberOfRunsInLargeMcb(&Mcb->MetaExts) != 0) {
        for (i = 0; FsRtlGetNextLargeMcbEntry(&Mcb->MetaExts, i, &Vba, &Lba, &Length); i++) {

            if (-1 == Lba || Vba == 0 || Length <= 0)
                continue;

            Ext2FreeBlock(IrpContext, Vcb, (ULONG)(Lba - 1), (ULONG)Length);
        }
    }


    Ext2ClearAllExtents(&Mcb->Extents);
    Ext2ClearAllExtents(&Mcb->MetaExts);
    ClearFlag(Mcb->Flags, MCB_ZONE_INITED);


    Mcb->Inode.i_blocks = 0;
    Mcb->Inode.i_size = 0;
    memset(&Mcb->Inode.i_block[0], 0, sizeof(__u32) * 15);



errorout:

    return Status;
}
