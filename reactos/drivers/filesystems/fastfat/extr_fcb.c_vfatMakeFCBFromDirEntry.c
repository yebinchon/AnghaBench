
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_16__ {int RefCount; int ParentListEntry; int ParentListHead; struct TYPE_16__* parentFcb; } ;
struct TYPE_15__ {int ShortNameU; int LongNameU; } ;
typedef TYPE_2__* PVFAT_DIRENTRY_CONTEXT ;
typedef TYPE_3__* PVFATFCB ;
typedef int PVCB ;
typedef int NTSTATUS ;


 int ExFreePoolWithTag (int ,int ) ;
 int InsertTailList (int *,int *) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int TAG_FCB ;
 int vfatAddFCBToTable (int ,TYPE_3__*) ;
 int vfatInitFCBFromDirEntry (int ,TYPE_3__*,TYPE_2__*) ;
 int vfatMakeFullName (TYPE_3__*,int *,int *,TYPE_1__*) ;
 TYPE_3__* vfatNewFCB (int ,TYPE_1__*) ;

NTSTATUS
vfatMakeFCBFromDirEntry(
    PVCB vcb,
    PVFATFCB directoryFCB,
    PVFAT_DIRENTRY_CONTEXT DirContext,
    PVFATFCB *fileFCB)
{
    PVFATFCB rcFCB;
    UNICODE_STRING NameU;
    NTSTATUS Status;

    Status = vfatMakeFullName(directoryFCB, &DirContext->LongNameU, &DirContext->ShortNameU, &NameU);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }

    rcFCB = vfatNewFCB(vcb, &NameU);
    vfatInitFCBFromDirEntry(vcb, rcFCB, DirContext);

    rcFCB->RefCount = 1;
    rcFCB->parentFcb = directoryFCB;
    InsertTailList(&directoryFCB->ParentListHead, &rcFCB->ParentListEntry);
    vfatAddFCBToTable(vcb, rcFCB);
    *fileFCB = rcFCB;

    ExFreePoolWithTag(NameU.Buffer, TAG_FCB);
    return STATUS_SUCCESS;
}
