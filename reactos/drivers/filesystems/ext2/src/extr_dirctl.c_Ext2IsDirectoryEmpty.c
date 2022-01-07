
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Inode; } ;
typedef int PEXT2_VCB ;
typedef TYPE_1__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int BOOLEAN ;


 int IsMcbDirectory (TYPE_1__*) ;
 scalar_t__ IsMcbSymLink (TYPE_1__*) ;
 int TRUE ;
 int ext3_is_dir_empty (int ,int *) ;

BOOLEAN
Ext2IsDirectoryEmpty (
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_MCB Mcb
)
{
    if (!IsMcbDirectory(Mcb) || IsMcbSymLink(Mcb)) {
        return TRUE;
    }

    return !!ext3_is_dir_empty(IrpContext, &Mcb->Inode);
}
