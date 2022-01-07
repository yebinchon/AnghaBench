
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_13__ {int * i_sb; int i_ino; } ;
struct TYPE_12__ {TYPE_6__ Inode; } ;
struct TYPE_11__ {int sb; } ;
typedef TYPE_1__* PEXT2_VCB ;
typedef TYPE_2__* PEXT2_MCB ;


 int DbgBreak () ;
 TYPE_2__* Ext2AllocateMcb (TYPE_1__*,int *,int *,int ) ;
 int Ext2FreeMcb (TYPE_1__*,TYPE_2__*) ;
 int Ext2LoadInode (TYPE_1__*,TYPE_6__*) ;

PEXT2_MCB
Ext2LoadInternalJournal(
    PEXT2_VCB Vcb,
    ULONG jNo
)
{
    PEXT2_MCB Jcb = ((void*)0);

    Jcb = Ext2AllocateMcb(Vcb, ((void*)0), ((void*)0), 0);
    if (!Jcb) {
        goto errorout;
    }

    Jcb->Inode.i_ino = jNo;
    Jcb->Inode.i_sb = &Vcb->sb;
    if (!Ext2LoadInode(Vcb, &Jcb->Inode)) {
        DbgBreak();
        Ext2FreeMcb(Vcb, Jcb);
        goto errorout;
    }

errorout:

    return Jcb;
}
