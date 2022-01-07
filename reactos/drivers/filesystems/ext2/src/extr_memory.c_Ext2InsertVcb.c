
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int VcbList; } ;
struct TYPE_4__ {int Next; } ;
typedef TYPE_1__* PEXT2_VCB ;


 TYPE_3__* Ext2Global ;
 int InsertTailList (int *,int *) ;

VOID
Ext2InsertVcb(PEXT2_VCB Vcb)
{
    InsertTailList(&(Ext2Global->VcbList), &Vcb->Next);
}
