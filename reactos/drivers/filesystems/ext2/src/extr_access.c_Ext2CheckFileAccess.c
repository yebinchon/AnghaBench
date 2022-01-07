
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Inode; } ;
typedef int PEXT2_VCB ;
typedef TYPE_1__* PEXT2_MCB ;


 int Ext2CheckInodeAccess (int ,int *,int) ;

int Ext2CheckFileAccess(PEXT2_VCB Vcb, PEXT2_MCB Mcb, int attempt)
{
    return Ext2CheckInodeAccess(Vcb, &Mcb->Inode, attempt);
}
