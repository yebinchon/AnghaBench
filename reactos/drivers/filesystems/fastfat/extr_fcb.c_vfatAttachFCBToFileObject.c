
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int VFATCCB ;
struct TYPE_17__ {int * Buffer; } ;
struct TYPE_16__ {int CcbLookasideList; } ;
struct TYPE_15__ {int IoVPB; } ;
struct TYPE_14__ {int Vpb; int * FsContext2; TYPE_1__* FsContext; int * SectionObjectPointer; } ;
struct TYPE_13__ {int Flags; int PathNameU; int SectionObjectPointers; int RefCount; int LongNameU; } ;
typedef TYPE_1__* PVFATFCB ;
typedef int * PVFATCCB ;
typedef TYPE_2__* PFILE_OBJECT ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int DPRINT (char*,TYPE_1__*,int *) ;
 int DPRINT1 (char*,TYPE_1__*,TYPE_2__*,int ) ;
 TYPE_8__ DebugFile ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int FALSE ;
 int FCB_CLEANED_UP ;
 int FCB_CLOSED ;
 scalar_t__ FsRtlIsNameInExpression (TYPE_8__*,int *,int ,int *) ;
 int RtlZeroMemory (int *,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 TYPE_7__* VfatGlobalData ;

NTSTATUS
vfatAttachFCBToFileObject(
    PDEVICE_EXTENSION vcb,
    PVFATFCB fcb,
    PFILE_OBJECT fileObject)
{
    PVFATCCB newCCB;
    newCCB = ExAllocateFromNPagedLookasideList(&VfatGlobalData->CcbLookasideList);
    if (newCCB == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    RtlZeroMemory(newCCB, sizeof (VFATCCB));

    fileObject->SectionObjectPointer = &fcb->SectionObjectPointers;
    fileObject->FsContext = fcb;
    fileObject->FsContext2 = newCCB;
    fileObject->Vpb = vcb->IoVPB;
    DPRINT("file open: fcb:%p PathName:%wZ\n", fcb, &fcb->PathNameU);






    return STATUS_SUCCESS;
}
