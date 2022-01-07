
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int Next; int TsDrop; } ;
struct TYPE_5__ {int FcbList; int ReferenceCount; int FcbCount; int FcbLock; } ;
typedef TYPE_1__* PEXT2_VCB ;
typedef TYPE_2__* PEXT2_FCB ;


 int ASSERT (int ) ;
 int ExIsResourceAcquiredExclusiveLite (int *) ;
 int Ext2ReferXcb (int *) ;
 int InsertTailList (int *,int *) ;
 int KeQuerySystemTime (int *) ;

VOID
Ext2InsertFcb(PEXT2_VCB Vcb, PEXT2_FCB Fcb)
{
    ASSERT(ExIsResourceAcquiredExclusiveLite(&Vcb->FcbLock));

    KeQuerySystemTime(&Fcb->TsDrop);
    Ext2ReferXcb(&Vcb->FcbCount);
    Ext2ReferXcb(&Vcb->ReferenceCount);
    InsertTailList(&Vcb->FcbList, &Fcb->Next);
}
