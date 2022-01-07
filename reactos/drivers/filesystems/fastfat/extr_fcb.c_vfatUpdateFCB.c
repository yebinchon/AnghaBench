
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ Buffer; } ;
struct TYPE_21__ {scalar_t__ Buffer; } ;
struct TYPE_20__ {int ParentListEntry; int ParentListHead; struct TYPE_20__* parentFcb; int SectionObjectPointers; int LongNameU; TYPE_7__ DirNameU; TYPE_6__ PathNameU; scalar_t__ PathNameBuffer; } ;
struct TYPE_19__ {int ShortNameU; int LongNameU; } ;
typedef TYPE_1__* PVFAT_DIRENTRY_CONTEXT ;
typedef TYPE_2__* PVFATFCB ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int CcFlushCache (int *,int *,int ,int *) ;
 int DPRINT (char*,int ,TYPE_2__*,TYPE_1__*,TYPE_2__*) ;
 int ExFreePoolWithTag (scalar_t__,int ) ;
 int InsertTailList (int *,int *) ;
 int NT_SUCCESS (int ) ;
 int RemoveEntryList (int *) ;
 int STATUS_SUCCESS ;
 int TAG_FCB ;
 int vfatAddFCBToTable (int ,TYPE_2__*) ;
 int vfatDelFCBFromTable (int ,TYPE_2__*) ;
 scalar_t__ vfatFCBIsDirectory (TYPE_2__*) ;
 int vfatInitFCBFromDirEntry (int ,TYPE_2__*,TYPE_1__*) ;
 int vfatMakeFullName (TYPE_2__*,int *,int *,TYPE_6__*) ;
 int vfatReleaseFCB (int ,TYPE_2__*) ;
 int vfatSplitPathName (TYPE_6__*,TYPE_7__*,int *) ;

NTSTATUS
vfatUpdateFCB(
    PDEVICE_EXTENSION pVCB,
    PVFATFCB Fcb,
    PVFAT_DIRENTRY_CONTEXT DirContext,
    PVFATFCB ParentFcb)
{
    NTSTATUS Status;
    PVFATFCB OldParent;

    DPRINT("vfatUpdateFCB(%p, %p, %p, %p)\n", pVCB, Fcb, DirContext, ParentFcb);


    Status = vfatMakeFullName(ParentFcb, &DirContext->LongNameU, &DirContext->ShortNameU, &Fcb->PathNameU);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }


    if (Fcb->PathNameBuffer)
    {
        ExFreePoolWithTag(Fcb->PathNameBuffer, TAG_FCB);
    }


    vfatDelFCBFromTable(pVCB, Fcb);


    Fcb->PathNameBuffer = Fcb->PathNameU.Buffer;
    Fcb->DirNameU.Buffer = Fcb->PathNameU.Buffer;
    vfatSplitPathName(&Fcb->PathNameU, &Fcb->DirNameU, &Fcb->LongNameU);


    OldParent = Fcb->parentFcb;
    RemoveEntryList(&Fcb->ParentListEntry);


    vfatInitFCBFromDirEntry(pVCB, Fcb, DirContext);

    if (vfatFCBIsDirectory(Fcb))
    {
        CcFlushCache(&Fcb->SectionObjectPointers, ((void*)0), 0, ((void*)0));
    }
    Fcb->parentFcb = ParentFcb;
    InsertTailList(&ParentFcb->ParentListHead, &Fcb->ParentListEntry);
    vfatAddFCBToTable(pVCB, Fcb);




    vfatReleaseFCB(pVCB, OldParent);

    return STATUS_SUCCESS;
}
