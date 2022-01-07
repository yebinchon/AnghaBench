
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ i_size; int i_blocks; int i_block; } ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {TYPE_6__ Inode; } ;
typedef scalar_t__ PUCHAR ;
typedef int PEXT2_VCB ;
typedef TYPE_1__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int NTSTATUS ;
typedef TYPE_2__ LARGE_INTEGER ;


 scalar_t__ EXT2_LINKLEN_IN_INODE ;
 int Ext2SaveInode (int ,int ,TYPE_6__*) ;
 int Ext2TruncateFile (int ,int ,TYPE_1__*,TYPE_2__*) ;
 int NT_SUCCESS (int ) ;
 int RtlZeroMemory (scalar_t__,scalar_t__) ;
 int STATUS_SUCCESS ;

NTSTATUS
Ext2TruncateSymlink(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb,
    ULONG Size
    )
{
    NTSTATUS status = STATUS_SUCCESS;
    PUCHAR data = (PUCHAR)&Mcb->Inode.i_block;
    ULONG len = (ULONG)Mcb->Inode.i_size;
    LARGE_INTEGER NewSize;

    if (len < EXT2_LINKLEN_IN_INODE && !Mcb->Inode.i_blocks) {

        RtlZeroMemory(data + Size, EXT2_LINKLEN_IN_INODE - Size);
        Mcb->Inode.i_size = Size;
        Ext2SaveInode(IrpContext, Vcb, &Mcb->Inode);

    } else {
        NewSize.QuadPart = Size;
        status = Ext2TruncateFile(IrpContext, Vcb, Mcb, &NewSize);
        if (!NT_SUCCESS(status)) {
            goto out;
        }
    }

out:
    return status;
}
