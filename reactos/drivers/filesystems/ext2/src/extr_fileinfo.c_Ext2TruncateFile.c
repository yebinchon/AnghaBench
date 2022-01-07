
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Flags; int MetaExts; int Extents; int Inode; } ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__* PLARGE_INTEGER ;
typedef int PEXT2_VCB ;
typedef TYPE_2__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;


 int ClearLongFlag (int ,int ) ;
 int DbgBreak () ;
 int Ext2ClearAllExtents (int *) ;
 scalar_t__ Ext2ListExtents (int *) ;
 int Ext2TruncateExtent (int ,int ,TYPE_2__*,TYPE_1__*) ;
 int Ext2TruncateIndirect (int ,int ,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ INODE_HAS_EXTENT (int *) ;
 int MCB_ZONE_INITED ;
 int STATUS_SUCCESS ;

NTSTATUS
Ext2TruncateFile(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb,
    PLARGE_INTEGER Size
)
{
    NTSTATUS status = STATUS_SUCCESS;

    if (INODE_HAS_EXTENT(&Mcb->Inode)) {
  status = Ext2TruncateExtent(IrpContext, Vcb, Mcb, Size);
    } else {
  status = Ext2TruncateIndirect(IrpContext, Vcb, Mcb, Size);
 }


    if (Size->QuadPart == 0) {


        if (Ext2ListExtents(&Mcb->Extents)) {
            DbgBreak();
        }
        Ext2ClearAllExtents(&Mcb->Extents);

        if (Ext2ListExtents(&Mcb->MetaExts)) {
            DbgBreak();
        }
        Ext2ClearAllExtents(&Mcb->MetaExts);
        ClearLongFlag(Mcb->Flags, MCB_ZONE_INITED);
    }

    return status;
}
