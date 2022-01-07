
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_11__ {int * Buffer; } ;
struct TYPE_10__ {int FcbLookasideList; } ;
struct TYPE_9__ {int ParentListHead; int MainResource; int PagingIoResource; int PathNameBuffer; int ParentListEntry; int Flags; int FileLock; int RefCount; int PathNameU; int LongNameU; } ;
typedef TYPE_1__* PVFATFCB ;


 int ASSERT (int ) ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT1 (char*,TYPE_1__*,int *,int ) ;
 TYPE_5__ DebugFile ;
 int ExDeleteResourceLite (int *) ;
 int ExFreePool (int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_1__*) ;
 int FALSE ;
 int FCB_IS_FAT ;
 int FCB_IS_VOLUME ;
 scalar_t__ FsRtlIsNameInExpression (TYPE_5__*,int *,int ,int *) ;
 int FsRtlUninitializeFileLock (int *) ;
 int IsListEmpty (int *) ;
 int RemoveEntryList (int *) ;
 TYPE_4__* VfatGlobalData ;
 int vfatFCBIsRoot (TYPE_1__*) ;

VOID
vfatDestroyFCB(
    PVFATFCB pFCB)
{







    FsRtlUninitializeFileLock(&pFCB->FileLock);

    if (!vfatFCBIsRoot(pFCB) &&
        !BooleanFlagOn(pFCB->Flags, FCB_IS_FAT) && !BooleanFlagOn(pFCB->Flags, FCB_IS_VOLUME))
    {
        RemoveEntryList(&pFCB->ParentListEntry);
    }
    ExFreePool(pFCB->PathNameBuffer);
    ExDeleteResourceLite(&pFCB->PagingIoResource);
    ExDeleteResourceLite(&pFCB->MainResource);
    ASSERT(IsListEmpty(&pFCB->ParentListHead));
    ExFreeToNPagedLookasideList(&VfatGlobalData->FcbLookasideList, pFCB);
}
